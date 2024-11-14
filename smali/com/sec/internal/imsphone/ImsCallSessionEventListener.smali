.class public Lcom/sec/internal/imsphone/ImsCallSessionEventListener;
.super Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;
.source "ImsCallSessionEventListener.java"


# static fields
.field private static final EVENT_CALL_RETRY:I = 0x64

.field private static final EVENT_RETRY_AFTER_TIMEOUT:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionEventListener"

.field private static USSD_MODE_NW_ERROR:I = -0x1

.field private static mEventCallRetryCounter:I

.field private static mEventCallRetryTotalTimer:I

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mForceUpdateCallProfileForDtmfEvent:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

.field private mPrevErrorString:Ljava/lang/String;

.field private mPrevOnEndedError:I

.field private mPrevOnErrorVal:I

.field private mPrevRetryAfter:I

.field private mTelephonyReadyToHandleImsCallbacks:Z


# direct methods
.method public static synthetic $r8$lambda$ErWBvBbOXwKQ-_UQup-tEnng2z8(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->lambda$notifyReadyToHandleImsCallbacks$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$YxpaVNduMZXvOtHMXQZhTALxVHc(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->lambda$notifyReadyToHandleImsCallbacks$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$oySKpwUa4bTwYf3J8JAH0MSFn3U(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->lambda$notifyReadyToHandleImsCallbacks$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I

    .line 51
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    const-string v1, ""

    .line 52
    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    .line 53
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevRetryAfter:I

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    .line 55
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 60
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    return-void
.end method

.method private handleSilentRetry(Lcom/sec/internal/constants/Mno;IILjava/lang/String;)Z
    .locals 5

    .line 683
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsCallSessionImpl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    .line 684
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 685
    new-instance v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$1;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$1;-><init>(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    .line 701
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x93

    invoke-direct {v0, v1, p3, p4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 703
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isDish()Z

    move-result p3

    const-wide/16 v1, 0x3e8

    const/16 p4, 0x64

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    .line 704
    sget p1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    add-int/2addr p1, v3

    sput p1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    if-gt p1, v3, :cond_2

    .line 706
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 707
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    int-to-long p2, p2

    mul-long/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v3

    .line 710
    :cond_0
    sget-object p3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p1, p3, :cond_1

    sget-object p3, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p1, p3, :cond_2

    .line 711
    :cond_1
    sget p1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    add-int/2addr p1, p2

    sput p1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 712
    sget p3, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    add-int/2addr p3, v3

    sput p3, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    if-lez p2, :cond_2

    const/4 v4, 0x5

    if-ge p3, v4, :cond_2

    const/16 p3, 0x2d

    if-ge p1, p3, :cond_2

    .line 714
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 715
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    int-to-long p2, p2

    mul-long/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v3

    :cond_2
    const/4 p1, 0x0

    .line 719
    sput p1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    .line 720
    sput p1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 721
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return p1
.end method

.method private synthetic lambda$notifyReadyToHandleImsCallbacks$0()V
    .locals 1

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->updateCallProfileForDtmfEvent()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyReadyToHandleImsCallbacks$1()V
    .locals 3

    :try_start_0
    const-string v0, "ImsCallSessionEventListener"

    const-string v1, "Telephoy gets ready. Invoke onError()"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevRetryAfter:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->onError(ILjava/lang/String;I)V

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    const-string v1, ""

    .line 92
    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    .line 93
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevRetryAfter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyReadyToHandleImsCallbacks$2()V
    .locals 2

    :try_start_0
    const-string v0, "ImsCallSessionEventListener"

    const-string v1, "Telephoy gets ready. Invoke onEnded()"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->onEnded(I)V

    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private needSkipUntilTelephonyReady(Lcom/sec/ims/volte2/IImsCallSession;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 313
    :cond_0
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 314
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p1

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needSkipUntilTelephonyReady() mTelephonyReadyToHandleImsCallbacks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " callType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cmcType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsCallSessionEventListener"

    .line 315
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-boolean p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    if-nez p0, :cond_3

    if-eqz v1, :cond_3

    .line 319
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 320
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private notifyAlertInfo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v1

    .line 927
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    const-string v3, "<urn:alert:service:call-waiting>"

    .line 928
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-boolean v5, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsCWNotified:Z

    if-nez v5, :cond_0

    const/4 p0, 0x1

    .line 929
    iput-boolean p0, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsCWNotified:Z

    const/4 p0, 0x3

    .line 930
    invoke-virtual {v3, v4, p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    goto :goto_0

    .line 931
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_2

    const-string v2, "<urn:alert:service:forward>"

    .line 932
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-nez v2, :cond_1

    .line 933
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    goto :goto_0

    :cond_1
    const-string v0, "<urn:alert:service:normal>"

    .line 934
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/16 v0, 0x9

    invoke-virtual {p0, v4, v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onErrorBeforeNego(ILjava/lang/String;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 534
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/16 v2, 0x1f7

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "ro.boot.hardware"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "qcom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "ImsCallSessionEventListener"

    const-string p1, "TMO E911 SERVICE_UNAVAILABLE will be handled onEnded()"

    .line 535
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    if-eqz v1, :cond_6

    .line 539
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 540
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p3, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p3

    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 541
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    .line 542
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 545
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->needDeclineDuringQecCall()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 546
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p3, 0x1fb

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x1388

    if-le p1, p2, :cond_3

    const/16 p2, 0x1770

    if-lt p1, p2, :cond_4

    :cond_3
    const/16 p2, 0x1792

    if-lt p1, p2, :cond_5

    const/16 p2, 0x17ef

    if-gt p1, p2, :cond_5

    .line 548
    :cond_4
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p3, 0x1fe

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_0

    .line 550
    :cond_5
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result p3

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 552
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    :cond_6
    if-eqz v1, :cond_b

    .line 554
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v4, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 555
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    new-instance v6, Lcom/sec/ims/util/SipError;

    invoke-direct {v6, p1, p2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v2, v5, v6, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 557
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_7

    const/16 v1, 0x96e

    if-ne p1, v1, :cond_7

    .line 558
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0xbb9

    invoke-direct {v1, v2, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_1

    .line 561
    :cond_7
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x93

    invoke-direct {v1, v2, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 564
    :goto_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_8

    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_8

    .line 565
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isDish()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-virtual {v2, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(I)Z

    move-result v2

    if-eqz v2, :cond_a

    if-lez p3, :cond_a

    .line 566
    :cond_8
    invoke-direct {p0, v0, p3, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->handleSilentRetry(Lcom/sec/internal/constants/Mno;IILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    const/4 p0, 0x1

    return p0

    .line 569
    :cond_9
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result p3

    invoke-direct {v1, p3, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 572
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 573
    :cond_b
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p3, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p3

    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 574
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    .line 575
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    :cond_c
    const/16 p3, 0x17e

    const/16 v2, 0x17d

    if-eqz v1, :cond_d

    .line 576
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v1

    if-eqz v1, :cond_d

    if-eq p1, v2, :cond_d

    if-eq p1, p3, :cond_d

    .line 578
    new-instance p3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x92

    invoke-direct {p3, v0, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 580
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    :cond_d
    const-string v1, "LTE Retry in UAC Barred"

    .line 581
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 582
    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, p1, :cond_e

    .line 583
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/16 p2, 0x12d

    invoke-interface {p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->removeCallStateMachineMessage(I)V

    .line 585
    :cond_e
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p0

    const/4 p2, 0x2

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/google/SecImsNotifier;->onTriggerEpsFallback(II)V

    return v3

    .line 588
    :cond_f
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    .line 589
    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    if-eq p1, v2, :cond_10

    if-ne p1, p3, :cond_11

    .line 592
    :cond_10
    iput p1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 593
    invoke-static {p2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertUrnToEccCat(Ljava/lang/String;)I

    move-result p1

    .line 594
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    const/16 p3, 0xfe

    if-ne p1, p3, :cond_11

    .line 596
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1, p2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setServiceUrn(Ljava/lang/String;)V

    .line 599
    :cond_11
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 602
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/16 p1, 0x8

    iput p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 603
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->releaseSessionListeners()V

    return v3
.end method

.method private onErrorWhileNegoOrLater(ILjava/lang/String;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 620
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x451

    const/4 v3, 0x1

    if-eq p1, v2, :cond_c

    const/16 v2, 0x452

    if-eq p1, v2, :cond_b

    const/16 v2, 0x457

    const/4 v4, 0x0

    if-eq p1, v2, :cond_a

    const/16 v2, 0x458

    if-eq p1, v2, :cond_9

    packed-switch p1, :pswitch_data_0

    .line 647
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 648
    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v5

    const/4 v6, 0x4

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 649
    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v7, v5, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    if-ne v7, v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 653
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isECallConvertedToNormal()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v5, v5, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-ge v5, v6, :cond_4

    .line 655
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v5, 0x92

    invoke-direct {v1, v5, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_1

    .line 652
    :cond_3
    :goto_0
    iget-object v1, v5, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {v5, v1, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->changeCmcErrorReason(II)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .line 657
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v5

    const/16 v6, 0x25b

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v7, v5, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    const/16 v7, 0xc8

    if-eq p1, v7, :cond_5

    const/16 v7, 0xd2

    if-eq p1, v7, :cond_5

    if-eq p1, v6, :cond_5

    .line 659
    iget-object p1, v5, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 660
    :cond_5
    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    .line 661
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p1, v6, :cond_6

    .line 662
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 664
    :cond_6
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isDish()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-lez p3, :cond_7

    .line 665
    invoke-direct {p0, v2, p3, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->handleSilentRetry(Lcom/sec/internal/constants/Mno;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v3

    .line 669
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 671
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/16 p2, 0x8

    iput p2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 672
    iget-boolean p2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    if-eqz p2, :cond_8

    .line 673
    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsEcbmImpl()Lcom/sec/internal/imsphone/ImsEcbmImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsEcbmImpl;->enterEmergencyCallbackMode()V

    .line 674
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iput-boolean v4, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 676
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->releaseSessionListeners()V

    goto :goto_3

    .line 635
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionCancelTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 638
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionCancelTransferred()V

    goto :goto_3

    .line 629
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 632
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferred()V

    goto :goto_3

    .line 626
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 623
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :goto_3
    return v4

    :cond_b
    return v3

    .line 641
    :cond_c
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return v3

    :pswitch_data_0
    .packed-switch 0x45e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCallProfileForDtmfEvent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 942
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 943
    iget-boolean v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v2, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ImsCallSessionEventListener"

    const-string/jumbo v1, "updateCallProfileForDtmfEvent"

    .line 945
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyReadyToHandleImsCallbacks()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ImsCallSessionEventListener"

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyReadyToHandleImsCallbacks() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mTelephonyReadyToHandleImsCallbacks = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mPrevOnEndedError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPrevOnErrorVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPrevErrorString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mPrevRetryAfter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevRetryAfter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mForceUpdateCallProfileForDtmfEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-boolean v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    if-eqz v1, :cond_1

    .line 74
    monitor-exit v0

    return-void

    .line 76
    :cond_1
    iget-boolean v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 86
    :cond_2
    iget v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 87
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 99
    :cond_3
    iget v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I

    if-le v1, v2, :cond_4

    .line 100
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_4
    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    .line 111
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCallQualityChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 953
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    const-string v0, "ImsCallSessionEventListener"

    const-string v1, "onCallQualityChanged()"

    .line 954
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v0, Landroid/telephony/CallQuality;

    invoke-direct {v0}, Landroid/telephony/CallQuality;-><init>()V

    invoke-interface {p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callQualityChanged(Landroid/telephony/CallQuality;)V

    :cond_0
    return-void
.end method

.method public onCalling()V
    .locals 2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 119
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 121
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 122
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onConfParticipantHeld(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x20

    .line 828
    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 831
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const-string p2, "on-hold"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    return-void
.end method

.method public onConfParticipantResumed(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 837
    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 840
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const-string p2, "connected"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    return-void
.end method

.method public onConferenceEstablished()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 737
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    return-void
.end method

.method public onEPdgUnavailable(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onEarlyMediaStarted(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getVideoCrbtSupportType()I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    const/4 v2, 0x0

    .line 187
    iput-boolean v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    .line 188
    iget-boolean v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-string v0, "ImsCallSessionEventListener"

    const-string v2, "Telephony not ready to handle ims callbacks. Postpone mForceUpdateCallProfileForDtmfEvent"

    .line 191
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput-boolean v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 196
    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x2

    if-ne v0, v2, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iput v4, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 201
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result p1

    if-nez p1, :cond_3

    .line 202
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->notifyAlertInfo()V

    .line 203
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 204
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-ne p1, v4, :cond_3

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 205
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 206
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    iput v4, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 207
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_3
    return-void
.end method

.method public onEnded(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    sget-object v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 329
    :try_start_0
    sput v1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    .line 330
    sput v1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 331
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v2, :cond_0

    .line 332
    monitor-exit v0

    return-void

    .line 335
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->needSkipUntilTelephonyReady(Lcom/sec/ims/volte2/IImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "ImsCallSessionEventListener"

    const-string v2, "Telephony not ready to handle ims callbacks. Postpone onEnded()"

    .line 336
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iput p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I

    .line 338
    monitor-exit v0

    return-void

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 342
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getVideoCrbtSupportType()I

    move-result v3

    .line 343
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    and-int/lit8 v5, v3, 0x1

    if-eq v5, v7, :cond_2

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3

    .line 345
    :cond_2
    invoke-virtual {v4}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 346
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v4, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 348
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    const-string v4, "ImsCallSessionEventListener"

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEnded(), cmcType: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v8, v8, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v8}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", sessionState: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v8, v8, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", error: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v5, :cond_10

    .line 352
    invoke-virtual {v4}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    .line 354
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v4, v5, :cond_4

    const/16 v4, 0xd2

    if-ne p1, v4, :cond_4

    .line 355
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v5, 0x5

    invoke-virtual {v4, v7, v5}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 358
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v5, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/16 v8, 0x92

    if-ge v5, v6, :cond_c

    if-eqz v3, :cond_5

    .line 359
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    move v7, v1

    :goto_0
    const-string v4, "ImsCallSessionEventListener"

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEnded(), CallDirection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_6

    const-string v6, "cp is null"

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isSdPulling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8

    .line 362
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v7, :cond_8

    .line 364
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->needDeclineDuringQecCall()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 365
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x1fb

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_2

    .line 367
    :cond_7
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 369
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    :cond_8
    if-eqz v3, :cond_a

    .line 370
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 371
    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    new-instance v7, Lcom/sec/ims/util/SipError;

    invoke-direct {v7, p1}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v5, v4, v6, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteRetryRequired(IILcom/sec/ims/util/SipError;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 373
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_9

    const/16 v2, 0x96e

    if-ne p1, v2, :cond_9

    .line 374
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0xbb9

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_3

    .line 377
    :cond_9
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x93

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 380
    :goto_3
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    :cond_a
    if-eqz v3, :cond_b

    .line 381
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 382
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v8, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 384
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    .line 386
    :cond_b
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 387
    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 388
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    .line 391
    :cond_c
    iget-object v4, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    const/4 v5, 0x4

    if-lez v4, :cond_d

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v6, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-ne v6, v5, :cond_d

    .line 393
    iget-object v2, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {v4, v2, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->changeCmcErrorReason(II)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    .line 394
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    :cond_d
    if-eqz v3, :cond_e

    .line 395
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v4, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-ge v4, v5, :cond_e

    .line 397
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v8, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 398
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    .line 399
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_f

    const/16 v2, 0x1f7

    if-ne p1, v2, :cond_f

    const-string/jumbo v2, "ro.boot.hardware"

    const-string v3, ""

    .line 400
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "qcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 401
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const-string v3, "100 Trying Timeout"

    invoke-direct {v2, v8, p1, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4

    .line 405
    :cond_f
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 406
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4

    .line 409
    :cond_10
    iget-object v2, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->hasConferenceHost()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 410
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object v2

    .line 411
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 412
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v4

    const-string v5, ""

    invoke-direct {v3, v4, p1, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 413
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 417
    :cond_11
    :goto_4
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->isMultiparty()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    .line 418
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1, v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setConferenceHost(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 421
    :cond_12
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-boolean v3, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    if-eqz v3, :cond_13

    .line 422
    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsEcbmImpl()Lcom/sec/internal/imsphone/ImsEcbmImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsEcbmImpl;->enterEmergencyCallbackMode()V

    .line 425
    :cond_13
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/16 v3, 0x8

    iput v3, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 426
    iput-boolean v1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 427
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->releaseSessionListeners()V

    .line 428
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_14

    .line 430
    invoke-virtual {p0, v2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    :cond_14
    return-void

    :catchall_0
    move-exception p0

    .line 428
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onEpdgStateChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 883
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    sget-object v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v1, :cond_0

    .line 449
    monitor-exit v0

    return-void

    .line 451
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->needSkipUntilTelephonyReady(Lcom/sec/ims/volte2/IImsCallSession;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ImsCallSessionEventListener"

    const-string v2, "Telephony not ready to handle ims callbacks. Postpone onError()"

    .line 452
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iput p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    .line 454
    iput-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    .line 455
    iput p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevRetryAfter:I

    .line 456
    monitor-exit v0

    return-void

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 459
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    const/16 v3, 0x25b

    const/4 v4, 0x2

    if-lez v2, :cond_5

    const-string v5, "ImsCallSessionEventListener"

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onError(), error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", sessionState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v7, v7, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v5, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-gt v5, v4, :cond_4

    .line 465
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    .line 466
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    .line 467
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->isExistP2pConnection()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    if-ne p1, v3, :cond_3

    .line 471
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iput v4, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    goto :goto_0

    :cond_3
    const-string p1, "ImsCallSessionEventListener"

    .line 477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onError(), ignore error of cmcCall. just return: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    monitor-exit v0

    return-void

    .line 482
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 483
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v5, :cond_5

    .line 484
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-interface {v5, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 487
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v5, :cond_8

    if-eqz v1, :cond_6

    if-ne p1, v3, :cond_6

    const-string v2, "Outgoing Call Barred"

    .line 489
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 490
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v3

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 492
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-ge v2, v4, :cond_7

    .line 493
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->onErrorBeforeNego(ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 494
    monitor-exit v0

    return-void

    .line 496
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->onErrorWhileNegoOrLater(ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 497
    monitor-exit v0

    return-void

    .line 499
    :cond_8
    iget-object p3, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p3}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->hasConferenceHost()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 500
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p3, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p3}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object p3

    const/4 v2, 0x0

    .line 501
    iput-boolean v2, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsConferenceHost:Z

    .line 502
    invoke-virtual {p3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 503
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 504
    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 505
    invoke-virtual {p3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 506
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->isInitialMerge()Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0x451

    if-ne p1, p2, :cond_9

    .line 507
    invoke-virtual {p3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_9
    if-eqz v1, :cond_a

    .line 511
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 512
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setConferenceHost(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 514
    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onEstablished(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x4

    .line 215
    iput v2, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 216
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 217
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->isWifiCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 222
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v3, :cond_3

    .line 223
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v1, v2, :cond_2

    .line 225
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getTtyModeFromCallType(II)I

    move-result p1

    if-eqz p1, :cond_3

    .line 232
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V

    :cond_3
    return-void
.end method

.method public onFailure(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v1, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_2

    .line 244
    iget v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 245
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 246
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 248
    :cond_1
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 249
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 252
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->releaseSessionListeners()V

    return-void
.end method

.method public onForwarded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 299
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 300
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1
    return-void
.end method

.method public onHeld(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 272
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateHoldToneType(Z)V

    .line 273
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p2

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    if-eqz p1, :cond_0

    .line 276
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsGeneralEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCallSessionEventListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->isOnlyCallProfileChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 902
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 904
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onParticipantAdded(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v0, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getCallSession(I)Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object v0

    .line 770
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->hasConferenceHost()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 771
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object v1

    .line 773
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 775
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 777
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v5

    .line 779
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 780
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "connected"

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    .line 781
    invoke-virtual {v4}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v9

    move v4, p1

    .line 780
    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->putConferenceState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    .line 784
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez v2, :cond_1

    .line 785
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 786
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 787
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 788
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    goto :goto_0

    .line 791
    :cond_1
    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 792
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 793
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 796
    iput-boolean p1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsConferenceParticipant:Z

    .line 799
    :cond_3
    iget-boolean p1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsConferenceHost:Z

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 800
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImpl:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 801
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImpl:Lcom/android/ims/internal/IImsCallSession;

    check-cast p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v2, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setConferenceHost(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 802
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez v2, :cond_4

    .line 803
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_1

    .line 805
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 809
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->isInitialMerge()Z

    move-result p1

    if-nez p1, :cond_6

    .line 810
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 812
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v1, :cond_6

    .line 813
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_6
    return-void
.end method

.method public onParticipantRemoved(I)V
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const-string v1, "disconnected"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    .line 822
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->removeConferenceState(I)V

    return-void
.end method

.method public onParticipantUpdated(I[Ljava/lang/String;[I[I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 742
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->clearConferenceStateList()V

    const/4 p1, 0x0

    move v0, p1

    .line 744
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 745
    aget-object v1, p2, v0

    const-string v2, "*23#"

    .line 746
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    .line 747
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "[^0-9]"

    const-string v3, ""

    .line 749
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "010"

    .line 750
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 751
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 753
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    .line 754
    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 757
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v5

    aget-object v6, p2, v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 758
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aget v1, p3, v0

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->participantStatus(I)Ljava/lang/String;

    move-result-object v8

    aget v9, p4, v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    .line 759
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    .line 757
    invoke-virtual/range {v3 .. v10}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->putConferenceStateList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/telephony/ims/ImsCallProfile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 762
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 763
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    return-void
.end method

.method public onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 729
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public onResumed(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 286
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 287
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    if-eqz p1, :cond_0

    .line 289
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRetryingVoLteOrCsCall(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 912
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x457

    const-string v1, "PS Retry Required"

    const/16 v2, 0x93

    invoke-direct {p1, v2, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 916
    :cond_0
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x458

    const-string v1, "CS Retry Required"

    const/16 v2, 0x92

    invoke-direct {p1, v2, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 920
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/16 p1, 0x8

    iput p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 921
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->releaseSessionListeners()V

    return-void
.end method

.method public onRingingBack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 150
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 151
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->notifyAlertInfo()V

    .line 154
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 155
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 156
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_0
    return-void
.end method

.method public onSessionChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 892
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    :cond_0
    return-void
.end method

.method public onSessionProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 164
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->notifyAlertInfo()V

    .line 166
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 171
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 172
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 177
    :cond_2
    invoke-virtual {v0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 178
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 179
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_3
    return-void
.end method

.method public onSessionUpdateRequested(I[B)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStopAlertTone()V
    .locals 0

    .line 0
    return-void
.end method

.method public onSwitched(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 258
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 261
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getTtyModeFromCallType(II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 263
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V

    :cond_0
    return-void
.end method

.method public onTrying()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 132
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_2

    .line 133
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 141
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->setCallProfile(I)V

    .line 143
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_2
    return-void
.end method

.method public onTtyTextRequest(I[B)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUssdReceived(II[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 857
    :try_start_0
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    .line 861
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    const-string p1, "error-code"

    .line 863
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 864
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-boolean p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsUssdTerminatedByUser:Z

    if-eqz p1, :cond_1

    const-string p0, "ImsCallSessionEventListener"

    const-string p1, "Ignoring USSD error because session was terminated by user"

    .line 865
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 868
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    sget p1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->USSD_MODE_NW_ERROR:I

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    goto :goto_1

    .line 870
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onUssdResponse(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
