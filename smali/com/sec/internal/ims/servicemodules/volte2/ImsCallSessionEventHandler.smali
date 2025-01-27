.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;
.super Ljava/lang/Object;
.source "ImsCallSessionEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;
    }
.end annotation


# static fields
.field private static final DISH_POOR_VIDEO_TIMEOUT:I = 0x2710

.field private static final TMO_POOR_VIDEO_TIMEOUT:I = 0x4e20


# instance fields
.field private LOG_IDC_FW_TAG:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

.field private mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field private mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field private mPoorVideoTimeoutMessage:Landroid/os/Message;

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

.field private smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_IDC_FW_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->LOG_IDC_FW_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mMno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolteSvcIntf(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImsCallSessionEventHandler"

    .line 49
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->LOG_TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IDC][FW]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->LOG_IDC_FW_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 54
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 55
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 56
    sget-char v1, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mPoorVideoTimeoutMessage:Landroid/os/Message;

    .line 71
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 72
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 73
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 74
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 75
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mMno:Lcom/sec/internal/constants/Mno;

    .line 76
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 77
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 78
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 79
    iput-object p9, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 80
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    return-void
.end method

.method private onVideoHeld()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoPause(Z)V

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->stopPoorVideoTimer()V

    :cond_0
    return-void
.end method

.method private onVideoQuality(Z)V
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 766
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->stopPoorVideoTimer()V

    goto :goto_0

    .line 768
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x4e20

    .line 769
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->startPoorVideoTimer(J)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2710

    .line 771
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->startPoorVideoTimer(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onVideoResumed()V
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoPause(Z)V

    .line 751
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private onVideoRtpTimeout(Z)V
    .locals 6

    .line 755
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2, v3, v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/16 v1, 0xce

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 759
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_1
    return-void
.end method

.method private startPoorVideoTimer(J)V
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPoorVideoTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->stopPoorVideoTimer()V

    .line 780
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xcd

    .line 781
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mPoorVideoTimeoutMessage:Landroid/os/Message;

    .line 782
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method private stopPoorVideoTimer()V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mPoorVideoTimeoutMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPoorVidoeTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mPoorVideoTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 792
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mPoorVideoTimeoutMessage:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method protected onCurrentLocationDiscoveryDuringEmergencyCall(ILcom/sec/internal/helper/AsyncResult;)V
    .locals 2

    .line 167
    iget-object p2, p2, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentLocationDiscoveryDuringEmergencyCall : session is different. sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", infoSessionId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 175
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v0, :cond_1

    .line 176
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_1
    return-void
.end method

.method protected onImsCallEventHandler(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 3

    .line 84
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsCallEventHandler, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler-IA;)V

    .line 89
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 143
    :pswitch_0
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleExtendToConference(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto/16 :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 140
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x23

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 132
    :pswitch_3
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleError(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto :goto_0

    .line 129
    :pswitch_4
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleEarlyMediaStart(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto :goto_0

    .line 126
    :pswitch_5
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleModifyRequested(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto :goto_0

    .line 123
    :pswitch_6
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleEnded(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto :goto_0

    .line 120
    :pswitch_7
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleHeldBoth(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto :goto_0

    .line 117
    :pswitch_8
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleHeldRemote(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto :goto_0

    .line 114
    :pswitch_9
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleHeldLocal(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto :goto_0

    .line 111
    :pswitch_a
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleModified(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto :goto_0

    .line 106
    :pswitch_b
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p1, v0, :cond_2

    .line 107
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mConfCallAdded:Z

    goto :goto_0

    .line 103
    :pswitch_c
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleRefreshFail(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto :goto_0

    .line 100
    :pswitch_d
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleEstablished(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto :goto_0

    .line 97
    :pswitch_e
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x1f

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 94
    :pswitch_f
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleCalling(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    goto :goto_0

    .line 91
    :pswitch_10
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->-$$Nest$mhandleRingingBack(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 182
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsMediaEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2bc

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRecordState()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->stopRecord()V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_0

    .line 224
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_0

    .line 221
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 218
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 215
    :pswitch_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 212
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onVideoQuality(Z)V

    goto :goto_0

    .line 207
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onVideoQuality(Z)V

    goto :goto_0

    .line 204
    :pswitch_8
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onVideoRtpTimeout(Z)V

    goto :goto_0

    .line 201
    :pswitch_9
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onVideoRtpTimeout(Z)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onVideoResumed()V

    goto :goto_0

    .line 191
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onVideoHeld()V

    .line 242
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_HELD:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-eq v0, v1, :cond_5

    .line 243
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RESUMED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-eq v0, v1, :cond_5

    .line 244
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v0, v1, :cond_6

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->notifyImsCallEventForVideo(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onReferStatus(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 3

    .line 151
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 152
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;

    .line 154
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;->mSessionId:I

    if-eq v0, v1, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReferStatus: respCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;->mRespCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;->mRespCode:I

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_1

    return-void

    .line 163
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x4b

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    return-void
.end method

.method protected onUssdEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;)V
    .locals 3

    .line 796
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->getSessionID()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 800
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$UssdEvent$USSD_STATE:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 815
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object p1

    .line 816
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 807
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "status"

    .line 808
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dcs"

    .line 809
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->getDCS()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data"

    .line 810
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->getData()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 811
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x5e

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 802
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x5d

    .line 803
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object p1

    .line 802
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
