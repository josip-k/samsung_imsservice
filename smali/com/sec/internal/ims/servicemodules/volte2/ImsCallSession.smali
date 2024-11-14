.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.super Lcom/sec/ims/volte2/IImsCallSession$Stub;
.source "ImsCallSession.java"


# static fields
.field public static final CALL_FORWARD_REQUEST_MARK_INCREMENT:I = 0xa

.field protected static final EVT_CURRENT_LOCATION_DISCOVERY_DURING_EMERGENCY_CALL:I = 0x8

.field protected static final EVT_IMSDC_EVENT:I = 0x6

.field protected static final EVT_IMS_CALL_EVENT:I = 0x1

.field protected static final EVT_IMS_MEDIA_EVENT:I = 0x2

.field protected static final EVT_REFER_STATUS:I = 0x5

.field protected static final EVT_RRC_CONNECTION_EVENT:I = 0x3

.field protected static final EVT_USSD_EVENT:I = 0x4

.field protected static final EVT_VCS_EVENT:I = 0x7

.field protected static final IMSDC_UPDATE_TELECOM_CALLID:I = 0x1

.field public static final QUANTUM_KEY_RETRY_DELAY:I = 0x1f4

.field protected static final TELECOM_EVENT_PREFIX:Ljava/lang/String; = "com.samsung.telecom.IMS.EVENT"

.field protected static final TELEPHONY_EVENT_PREFIX:Ljava/lang/String; = "com.samsung.telephony.event."

.field protected static final VCS_TOUCH_SCREEN:I = 0x1

.field protected static final hexArray:[C


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

.field protected mCallId:I

.field protected mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mCmcType:I

.field protected mContext:Landroid/content/Context;

.field protected mDiagnosisController:Lcom/sec/internal/ims/servicemodules/volte2/IDiagnosisController;

.field protected mDisplaySurface:Landroid/view/Surface;

.field private mDtmfCode:I

.field private mEndReason:I

.field private mEndType:I

.field protected mEpsFallback:Z

.field protected mForwarded:Z

.field protected mHandOffTimedOut:Z

.field private mIdcData:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

.field protected mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

.field protected mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

.field protected mIsEstablished:Z

.field protected mIsNrSaMode:Z

.field private mIsPeerProfileRetried:Z

.field private mIsUsingCamera:Z

.field protected mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

.field private mKeyRetryCnt:I

.field protected mLastUsedCamera:I

.field protected final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IImsCallSessionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocalHoldTone:Z

.field protected final mLooper:Landroid/os/Looper;

.field protected mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field protected mMno:Lcom/sec/internal/constants/Mno;

.field protected mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field protected mOldLocalHoldTone:Z

.field protected mPhoneId:I

.field protected mPrevUsedCamera:I

.field protected mRegistration:Lcom/sec/ims/ImsRegistration;

.field protected mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mRelayChTerminated:Z

.field private mRequestMark:I

.field protected mResumeCallRetriggerTimer:I

.field protected mSessionId:I

.field protected mSrvccStarted:Z

.field public mStartTime:J

.field private final mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mTimerState:[I

.field private mUserCameraOff:Z

.field protected mUssdStackEventHandler:Landroid/os/Handler;

.field private mVideoCrbtSupportType:I

.field protected mVolteStackEventHandler:Landroid/os/Handler;

.field protected mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

.field protected smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 1829
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
    .locals 5

    .line 255
    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;-><init>()V

    const-string v0, "ImsCallSession"

    .line 100
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    .line 116
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 117
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 118
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 120
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 121
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    .line 122
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUssdStackEventHandler:Landroid/os/Handler;

    .line 124
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    .line 127
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 128
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDiagnosisController:Lcom/sec/internal/ims/servicemodules/volte2/IDiagnosisController;

    .line 130
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 137
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    .line 138
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    const/4 v1, -0x1

    .line 140
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallId:I

    const/4 v2, 0x0

    .line 141
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    .line 142
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    .line 143
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mResumeCallRetriggerTimer:I

    .line 144
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    .line 146
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPrevUsedCamera:I

    .line 147
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    .line 149
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    const/4 v3, 0x1

    .line 150
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    .line 151
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mOldLocalHoldTone:Z

    .line 152
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsNrSaMode:Z

    .line 153
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEpsFallback:Z

    .line 154
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mHandOffTimedOut:Z

    .line 155
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSrvccStarted:Z

    .line 156
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mForwarded:Z

    .line 160
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDtmfCode:I

    .line 161
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    .line 162
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndReason:I

    .line 164
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsUsingCamera:Z

    .line 165
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUserCameraOff:Z

    .line 166
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVideoCrbtSupportType:I

    const-wide/16 v3, 0x0

    .line 167
    iput-wide v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mStartTime:J

    .line 168
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRelayChTerminated:Z

    .line 170
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDisplaySurface:Landroid/view/Surface;

    const/4 v3, 0x6

    .line 172
    iput v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKeyRetryCnt:I

    .line 173
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsPeerProfileRetried:Z

    .line 174
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRequestMark:I

    .line 178
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIdcData:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    .line 250
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 251
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    .line 252
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    .line 256
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    .line 257
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 258
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 259
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 260
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLooper:Landroid/os/Looper;

    .line 261
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    .line 262
    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 263
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;

    invoke-direct {p1, p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    .line 322
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$2;

    invoke-direct {p1, p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$2;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUssdStackEventHandler:Landroid/os/Handler;

    .line 339
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getImsMediaController()Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 341
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 343
    sget-object p1, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->MAX:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTimerState:[I

    .line 344
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 1832
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 1833
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1834
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 1835
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 1836
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1838
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private checkQuantumPeerProfileCondition(I)Z
    .locals 3

    .line 1668
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1669
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateQuantumPeerProfileStatus auth and login fail"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0x191

    if-eq p1, v0, :cond_1

    .line 1672
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateQuantumPeerProfileStatus fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private checkQuantumQMKeyCondition(I)Z
    .locals 5

    .line 1741
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1742
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateQuantumQMKeyStatus auth and login fail"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0x15f

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    .line 1745
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateQuantumQMKeyStatus fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKeyRetryCnt:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKeyRetryCnt:I

    .line 1747
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retry QMKey cnt: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKeyRetryCnt:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1749
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getPeerProfileStatus()I

    move-result p1

    const/16 v0, 0x191

    if-eq p1, v0, :cond_2

    .line 1750
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateQuantumQMKeyStatus abnormal peerProfileStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getPeerProfileStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v2
.end method

.method private getPreferredImpu(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;
    .locals 4

    .line 1280
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1283
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1284
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1285
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 1286
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {v2, v3}, Lcom/sec/ims/util/ImsUri$UriType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1287
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getPreferredImpu: Found TEL URI"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private isNeedCameraRequest()Z
    .locals 5

    .line 939
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    .line 942
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    .line 943
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v2, v4

    .line 946
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedCameraRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isSrvccAvailable()Z
    .locals 4

    .line 1550
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSrvccVersion(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1551
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result p0

    .line 1550
    invoke-static {v0, v1, v2, v3, p0}, Lcom/sec/internal/helper/ImsCallUtil;->isSrvccAvailable(ILcom/sec/internal/constants/Mno;ZLcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Z

    move-result p0

    return p0
.end method

.method private setAudioCodecTypeProfile(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1222
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->getAudioCodec(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/MediaProfile;->setAudioCodec(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;)V

    :cond_0
    return-void
.end method

.method private setMediaProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V
    .locals 4

    .line 1200
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1201
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioBitRate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setAudioBitRate(Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoOrientation(I)V

    .line 1204
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v0

    .line 1205
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoSize(II)V

    .line 1206
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v1

    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoCrbtType()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LAND"

    .line 1209
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "QCIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    .line 1211
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoWidth()I

    move-result p1

    .line 1210
    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->changeCameraCapabilities(III)V

    goto :goto_0

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    .line 1214
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoHeight()I

    move-result p1

    .line 1213
    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->changeCameraCapabilities(III)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setQuantumSecurityInfo()V
    .locals 3

    .line 1821
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1822
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getCallDirection()I

    move-result v1

    const-string v2, "call_direction"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1823
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getCryptoMode()I

    move-result v1

    const-string v2, "crypto_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1824
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getQtSessionId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "qt_session_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "session_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-interface {v1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setQuantumSecurityInfo(ILandroid/os/Bundle;)I

    return-void
.end method


# virtual methods
.method public accept(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public acceptECTRequest()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public acceptIdc(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSupportImsDataChannel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getBuilder()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    move-result-object v0

    .line 649
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->setSdp(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    move-result-object p1

    .line 650
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->build()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    move-result-object p1

    .line 652
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x96

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1245
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    .line 1246
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    .line 1245
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    const/16 v1, 0xc

    if-ne p3, v1, :cond_0

    .line 1249
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getUssdRuri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_0

    .line 1250
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "urn"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1252
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_0

    .line 1253
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIM_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-ne p3, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    .line 1254
    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {v0, v2, p0, p1, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_0

    .line 1256
    :cond_2
    iget p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    if-lez p3, :cond_3

    .line 1257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "@"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 1258
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1259
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_3
    invoke-virtual {v0, v2, p1, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public cancelTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelTransfer:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public disableQuantumEncryption()V
    .locals 2

    .line 1632
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disableQuantumEncryption()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 1633
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyQuantumEncryptionStatus(I)V

    .line 1634
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->enableQuantumSecurityService(IZ)I

    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 878
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x49

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 875
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "extendToConference(): there is no participants"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Cannot extendToConference : participants is null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public forceNotifyCurrentCodec()V
    .locals 1

    .line 1227
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public getCallId()I
    .locals 0

    .line 471
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallId:I

    return p0
.end method

.method public getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object p0
.end method

.method public getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    return-object p0
.end method

.method public getCallStateOrdinal()I
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public getCmcCallEstablishTime()J
    .locals 2

    .line 1542
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCmcCallEstablishTime:J

    return-wide v0
.end method

.method public getCmcType()I
    .locals 0

    .line 491
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    return p0
.end method

.method protected getConfReferUriAsserted(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1358
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceReferUriAsserted()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfReferUriType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1344
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceReferUriType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfRemoveReferUriType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1351
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceRemoveReferUriType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfSubscribeDialogType(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1337
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceDialogType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfSubscribeEnabled(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1330
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceSubscribe()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfSupportPrematureEnd(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1372
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceSupportPrematureEnd()Z

    move-result p0

    return p0
.end method

.method protected getConfUseAnonymousUpdate(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1365
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getConferenceUseAnonymousUpdate()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConferenceUri(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 4

    .line 1317
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1322
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1323
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    invoke-interface {v3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 1322
    invoke-static {v1, p1, v2, v0, p0}, Lcom/sec/internal/helper/ImsCallUtil;->getConferenceUri(ILcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDRBLost()Z
    .locals 0

    .line 1388
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->getDRBLost()Z

    move-result p0

    return p0
.end method

.method public getDedicatedBearerState(I)I
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->getDedicatedBearerState(I)I

    move-result p0

    return p0
.end method

.method public declared-synchronized getDisplaySurface()Landroid/view/Surface;
    .locals 1

    monitor-enter p0

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDisplaySurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEndReason()I
    .locals 0

    .line 1420
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndReason:I

    return p0
.end method

.method public getEndType()I
    .locals 0

    .line 1416
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    return p0
.end method

.method public getEpsFallback()Z
    .locals 0

    .line 519
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEpsFallback:Z

    return p0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1396
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    if-eqz v0, :cond_0

    .line 1397
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    return p0

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    if-eqz v0, :cond_1

    .line 1399
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipReason;->getCause()I

    move-result p0

    return p0

    .line 1402
    :cond_1
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1406
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    if-eqz v0, :cond_0

    .line 1407
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    if-eqz v0, :cond_1

    .line 1409
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1412
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getForwarded()Z
    .locals 0

    .line 527
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mForwarded:Z

    return p0
.end method

.method public getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIdcData:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    return-object p0
.end method

.method protected getImei(I)Ljava/lang/String;
    .locals 0

    .line 1559
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIncomingInviteRawSip()Ljava/lang/String;
    .locals 0

    .line 1188
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getSipInviteMsg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsEstablished()Z
    .locals 0

    .line 503
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    return p0
.end method

.method public getIsNrSaMode()Z
    .locals 0

    .line 429
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsNrSaMode:Z

    return p0
.end method

.method public getMediaCallProvider()Lcom/sec/ims/volte2/IImsMediaCallProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1173
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    check-cast p0, Lcom/sec/ims/volte2/IImsMediaCallProvider;

    return-object p0
.end method

.method public getModifyRequestedProfile()Lcom/sec/ims/volte2/data/CallProfile;
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object p0
.end method

.method protected getOriginatingUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_0

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPreferredImpu(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected getPEmergencyInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1555
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/internal/helper/ImsCallUtil;->getPEmergencyInfo(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPendingCall()Z
    .locals 0

    .line 1585
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPendingCall()Z

    move-result p0

    return p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 1538
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    return p0
.end method

.method public getPreAlerting()Z
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPreAlerting()Z

    move-result p0

    return p0
.end method

.method public getPrevCallStateOrdinal()I
    .locals 1

    .line 546
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPreviousState()Lcom/sec/internal/helper/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getStateByName(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;
    .locals 0

    .line 1620
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public getRelayChTerminated()Z
    .locals 0

    .line 1573
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRelayChTerminated:Z

    return p0
.end method

.method protected getSecondImpu(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;
    .locals 3

    .line 1299
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1301
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 1302
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1303
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 1304
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 1305
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getSecondImpu: Found Second Number"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSessionId()I
    .locals 0

    .line 483
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    return p0
.end method

.method public getSrvccStarted()Z
    .locals 0

    .line 511
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSrvccStarted:Z

    return p0
.end method

.method protected getTimerState(I)I
    .locals 0

    .line 1581
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTimerState:[I

    aget p0, p0, p1

    return p0
.end method

.method public declared-synchronized getUsingCamera()Z
    .locals 1

    monitor-enter p0

    .line 560
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsUsingCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVideoCrbtSupportType()I
    .locals 0

    .line 532
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVideoCrbtSupportType:I

    return p0
.end method

.method handleImsDcEvent(ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const-string p1, "com.samsung.telephony.extra.ims.IMSDC_TELECOM_CALL_ID"

    const-string v1, ""

    .line 952
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 953
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "TC@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 957
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIdcData:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    if-nez p2, :cond_1

    .line 958
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleImsDcEvent mIdcData null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p2, "_"

    .line 964
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 965
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 967
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsDcEvent unexpected format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsDcEvent TelecomCallId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIdcData:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setTelecomCallId(Ljava/lang/String;)V

    .line 975
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIdcData:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getLocalBdcTlsId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIdcData:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getIsNotifiedTelecomCallId()Z

    move-result p2

    if-nez p2, :cond_4

    .line 976
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getIdcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;

    move-result-object p2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIdcData:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getLocalBdcTlsId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;->setTelecomCallId(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIdcData:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setIsNotifiedTelecomCallId(Z)V

    goto :goto_2

    .line 954
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleImsDcEvent invalid TelecomCallId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public handleRegistrationDone(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 1498
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRegistrationDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 1500
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->onRegistrationDone(Lcom/sec/ims/ImsRegistration;)V

    const/4 p1, 0x0

    .line 1501
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setPendingCall(Z)V

    .line 1503
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result p1

    .line 1504
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const/16 v1, 0xb

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1506
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_3

    .line 1507
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const-string v0, "mmtel"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1508
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1510
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0xd3

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1505
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public handleRegistrationFailed()V
    .locals 2

    .line 1516
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRegistrationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1517
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v0, 0x0

    .line 1518
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setPendingCall(Z)V

    .line 1519
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xd3

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public hold(Lcom/sec/ims/volte2/data/MediaProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public holdVideo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 902
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public info(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "type"

    .line 1145
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "info"

    .line 1146
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x65

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public init(Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 15

    move-object v12, p0

    move-object/from16 v0, p1

    .line 348
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    move-object/from16 v0, p2

    .line 349
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 351
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v13, 0x1

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 354
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init(): this is MDMN call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v13}, Lcom/sec/ims/volte2/data/CallProfile;->setSamsungMdmnCall(Z)V

    .line 356
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 360
    :goto_0
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    iput v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    goto :goto_1

    .line 362
    :cond_1
    iget v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 365
    :goto_1
    new-instance v14, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    const-string v10, "CallStateMachine"

    iget-object v11, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLooper:Landroid/os/Looper;

    move-object v0, v14

    move-object v2, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v14, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 367
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->init()V

    .line 369
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start CallStatMachine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/helper/StateMachine;->start()V

    .line 373
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDiagnosisController:Lcom/sec/internal/ims/servicemodules/volte2/IDiagnosisController;

    .line 374
    new-instance v8, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    .line 376
    new-instance v11, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v10, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;)V

    iput-object v11, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    .line 379
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v13, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 380
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 382
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUssdStackEventHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-interface {v0, v1, v3, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForUssdEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 383
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForReferStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->registerForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 387
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSupportImsDataChannel(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    new-instance v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;-><init>()V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIdcData:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    .line 391
    :cond_2
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    :cond_3
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_4

    .line 395
    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 396
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentPcscf(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 399
    :try_start_0
    aget-object v1, v0, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 401
    :catch_0
    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "use default port 5060"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x13c4

    :goto_2
    move v6, v1

    .line 404
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v2, 0x0

    aget-object v5, v0, v2

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Ljava/lang/String;ILcom/sec/internal/constants/Mno;)V

    iput-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKaSender:Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    .line 405
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_4

    const/16 v0, 0x5dc

    .line 406
    iput v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mResumeCallRetriggerTimer:I

    .line 411
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setIsNrSaMode()V

    .line 413
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_5

    .line 414
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+86"

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localPhoneNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setLocalPhoneNumber(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public inviteGroupParticipant(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inviteParticipants(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 854
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isE911Call()Z
    .locals 0

    .line 1563
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEpdgCall()Z
    .locals 5

    .line 437
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    .line 438
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    .line 440
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 442
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v4, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getE911PdnSelectionVowifi()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    goto :goto_1

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "use EmergemcyRat for IPC_RAT_EPDG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VoWIFI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "use isEmergencyEpdgConnected for EPDN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result v1

    :cond_3
    :goto_1
    return v1
.end method

.method public isQuantumEncryptionCall()Z
    .locals 2

    .line 1589
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isQSSSuccessAuthAndLogin(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getEncryptStatus()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isQuantumEncryptionServiceAvailable()Z
    .locals 3

    .line 1599
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v0, :cond_3

    .line 1603
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isECallConvertedToNormal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1608
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Downgraded VT Call, not support QEC"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1604
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "E call or VT call, not support QEC"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1612
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 1613
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Under multicall, not support QEC"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1616
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isQSSSuccessAuthAndLogin(I)Z

    move-result p0

    return p0
.end method

.method public isRemoteHeld()Z
    .locals 0

    .line 1546
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    return p0
.end method

.method protected isTPhoneRelaxMode()Z
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/helper/ImsCallUtil;->isTPhoneRelaxMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public merge(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected needUpdateEccUrn()Z
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    .line 633
    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 634
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyCallDowngraded()V
    .locals 2

    .line 1235
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 1236
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 1237
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 1238
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CALL_DOWNGRADED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 1239
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->onCallDowngraded(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void
.end method

.method public notifyCmcDtmfEvent(I)V
    .locals 3

    .line 1162
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCmcDtmfEvent, dtmfKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x56

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    return-void
.end method

.method public notifyCmcInfoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V
    .locals 3

    .line 1167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCmcInfoEvent, cmcInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x57

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyDSDAVideoCapa(Z)V
    .locals 1

    .line 1843
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    if-eqz v0, :cond_0

    return-void

    .line 1847
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDSDAVideoCapa(Z)V

    .line 1849
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1850
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->NOTIFY_DSDA_VIDEO_CAPA:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyImsGeneralEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;Landroid/os/Bundle;)V

    return-void
.end method

.method protected notifyImsGeneralEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;Landroid/os/Bundle;)V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImsGeneralEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 220
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->VCID_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setAlertInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_SCREEN_SHARE_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setIdcScreenShareRunning(Z)V

    goto :goto_0

    .line 224
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_SCREEN_SHARE_STOP:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setIdcScreenShareRunning(Z)V

    goto :goto_0

    .line 226
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_ARCALL_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setIdcArCallRunning(Z)V

    goto :goto_0

    .line 228
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_ARCALL_STOP:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setIdcArCallRunning(Z)V

    .line 233
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 235
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 237
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 239
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public notifyImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 3

    .line 1151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImsMediaEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 1153
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1156
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public notifyQuantumEncryptionStatus(I)V
    .locals 1

    .line 1625
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setEncryptStatus(I)V

    .line 1627
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1628
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->NOTIFY_QUANTUM_ENCRYPTION_STATUS:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyImsGeneralEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;Landroid/os/Bundle;)V

    return-void
.end method

.method protected notifyRetryingVoLteOrCsCall(I)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRetryingVoLteOrCsCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method protected notifySessionChanged(I)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionChanged callId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 206
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 208
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSessionChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 210
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 0

    .line 1231
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onImsCallEventHandler(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void
.end method

.method public onReceiveSIPMSG(Ljava/lang/String;Z)V
    .locals 1

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->onReceiveSIPMSG(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSwitchCamera()V
    .locals 3

    .line 1484
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchCamera - mLastUsedCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1486
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    goto :goto_0

    .line 1488
    :cond_0
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    :goto_0
    return-void
.end method

.method public onUpdateGeolocation()V
    .locals 2

    .line 1493
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdateGeolocation: ON_LOCATION_ACQUIRING_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x1f5

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method preProcessImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7

    .line 1001
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "_"

    .line 1003
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    .line 1009
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1010
    array-length v0, p1

    if-lez v0, :cond_9

    .line 1011
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preProcessImsCallEvent: event type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.telecom.IMS.EVENT"

    .line 1013
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    const-string v0, "VCS"

    .line 1014
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1016
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v4, :cond_2

    .line 1017
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support VCS for mno "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x2

    .line 1020
    aget-object p1, p1, v0

    const-string v0, "TOUCHSCREEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "com.samsung.telephony.extra.ims.VCS_ACTION"

    .line 1022
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "slide"

    .line 1023
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.samsung.telephony.extra.ims.VCS_SLIDING_STAGE"

    .line 1024
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "start"

    .line 1025
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x64

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1029
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preProcessImsCallEvent: state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", delay: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    goto :goto_1

    :cond_4
    move v0, v1

    move p1, v2

    :goto_1
    if-le p1, v2, :cond_7

    .line 1032
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v4, v0

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 1037
    :cond_5
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x1c

    if-le v0, v4, :cond_8

    .line 1038
    aget-object v0, p1, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1039
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSupportImsDataChannel(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "IMSDC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "UPDATETELECOMCALLID"

    .line 1040
    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_2

    :cond_6
    move p1, v2

    :goto_2
    if-le p1, v2, :cond_7

    .line 1044
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    move v3, v1

    goto :goto_4

    .line 1051
    :cond_8
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown function name format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_9
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "preProcessImsCallEvent allowGotoSve: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 817
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p2}, Lcom/sec/ims/Dialog;->getRemoteNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 820
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "msisdn"

    .line 821
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "targetDialog"

    .line 822
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 824
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 825
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const-string v1, "MDTC"

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 826
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "pulling for Softphone"

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "MDSF"

    .line 828
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 830
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "pulling for mdService MEP"

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "MDMP"

    .line 832
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const-string/jumbo p2, "overwrite_mode"

    .line 835
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    const-string v2, "DRPT"

    invoke-static {p2, v1, v2, p1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 838
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 839
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p0

    return p0

    .line 813
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "transfer(): target is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Cannot transfer call: target is empty"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pushCall(Ljava/lang/String;)V
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transfer: msisdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x3b

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public reInviteIdc(ILjava/lang/String;)V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSupportImsDataChannel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getBuilder()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    move-result-object v0

    .line 757
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->setSdp(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    move-result-object p2

    .line 758
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->setReqId(I)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    move-result-object p1

    .line 759
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->build()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    move-result-object p1

    .line 760
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p2, 0x97

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public recording(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 586
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->needToLateEndedNotify()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 588
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    .line 590
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v0, :cond_1

    .line 591
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "notify the ended call for a late registered session."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEnded(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public reinvite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 730
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x1f6

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public reject(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIsEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 663
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    .line 664
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndReason:I

    .line 665
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void

    .line 660
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ignore reject for a while(3 secs) msg after call accepted or call was already InCall State."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Reject Failed"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rejectECTRequest()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public removeCallStateMachineMessage(I)V
    .locals 0

    .line 1854
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    return-void
.end method

.method public removeGroupParticipant(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeParticipants(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replaceRegistrationInfo(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1523
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "replaceRegistrationInfo from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-void
.end method

.method public replaceSessionEventListener(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 4

    .line 607
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 610
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 613
    :cond_0
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public replaceSipCallId(Ljava/lang/String;)V
    .locals 3

    .line 1528
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "replaceSipCallId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setSipCallId(Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->replaceSipCallId(ILjava/lang/String;)V

    return-void
.end method

.method public requestCallDataUsage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1178
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->requestCallDataUsage()V

    return-void
.end method

.method public requestQuantumPeerProfileStatus(ZZ)V
    .locals 6

    .line 1638
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1642
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isCurrentDSDASupport()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    .line 1643
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1644
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p2, "dsds mode, no data available"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->disableQuantumEncryption()V

    return-void

    .line 1649
    :cond_1
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsPeerProfileRetried:Z

    if-nez p1, :cond_2

    .line 1651
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->enableQuantumSecurityService(IZ)I

    :cond_2
    if-eqz p2, :cond_3

    .line 1654
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRequestMark:I

    add-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRequestMark:I

    .line 1656
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getQuantumEncryptionServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;

    move-result-object p1

    .line 1657
    new-instance p2, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getLocalPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1658
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getRemoteTelNum()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1659
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRequestMark:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1657
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;->onRequestPeerProfileStatus(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_4

    .line 1661
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onRequestPeerProfileStatus fail"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->disableQuantumEncryption()V

    :cond_4
    return-void
.end method

.method public resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x47

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public resumeVideo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public sendDtmf(IILandroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1069
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "code"

    .line 1070
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "mode"

    const/4 v0, 0x0

    .line 1071
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "operation"

    const/4 v0, 0x1

    .line 1072
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 1073
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1074
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x38

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendImsCallEvent: event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->preProcessImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sessionId"

    .line 1062
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1063
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public sendNegotiatedLocalSdp(Ljava/lang/String;)V
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSupportImsDataChannel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendNegotiatedLocalSdp(ILjava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->NEGOTIATED:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->transitState(Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;)V

    :cond_0
    return-void
.end method

.method public sendText(Ljava/lang/String;I)V
    .locals 2

    .line 1079
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "len"

    .line 1080
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "text"

    .line 1081
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x40

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setCallId(I)V
    .locals 0

    .line 465
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallId:I

    .line 466
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRequestMark:I

    return-void
.end method

.method public setCmcType(I)V
    .locals 0

    .line 487
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    return-void
.end method

.method protected setDRBLost(Z)V
    .locals 0

    .line 1392
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->setDRBLost(Z)V

    return-void
.end method

.method public setDedicatedBearerState(II)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->setDedicatedBearerState(II)V

    return-void
.end method

.method public declared-synchronized setDisplaySurface(Landroid/view/Surface;)V
    .locals 0

    monitor-enter p0

    .line 574
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDisplaySurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEndReason(I)V
    .locals 0

    .line 1424
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndReason:I

    return-void
.end method

.method public setEndType(I)V
    .locals 0

    .line 1428
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    return-void
.end method

.method public setEpdgState(Z)V
    .locals 4

    .line 780
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEpdgState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 782
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setRadioTech(I)V

    .line 783
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 784
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCrossSimCall(Z)V

    goto :goto_0

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setRadioTech(I)V

    .line 787
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCrossSimCall(Z)V

    .line 789
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[TMOUS/SPRINT] check DBR after handover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->handleDedicatedEventAfterHandover(I)V

    .line 794
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x190

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public setEpdgStateNoNotify(Z)V
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEpdgStateNoNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 801
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRadioTech(I)V

    .line 802
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 803
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v1, p0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCrossSimCall(Z)V

    goto :goto_0

    .line 805
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRadioTech(I)V

    .line 806
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCrossSimCall(Z)V

    :goto_0
    return-void
.end method

.method public setEpsFallback(Z)V
    .locals 0

    .line 515
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEpsFallback:Z

    return-void
.end method

.method public setForwarded(Z)V
    .locals 0

    .line 523
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mForwarded:Z

    return-void
.end method

.method public setHoldBeforeTransfer(Z)V
    .locals 0

    .line 577
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    return-void
.end method

.method public setIsEstablished(Z)V
    .locals 0

    .line 499
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    return-void
.end method

.method public setIsNrSaMode()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsNrSaMode:Z

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNrSaMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsNrSaMode:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public setPendingCall(Z)V
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPendingCall(Z)V

    return-void
.end method

.method public setPreAlerting()V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreAlerting()V

    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 3

    .line 1432
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewResolution width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->setPreviewResolution(II)V

    return-void
.end method

.method public setRelayChTerminated(Z)V
    .locals 0

    .line 1568
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRelayChTerminated:Z

    return-void
.end method

.method protected setRttDedicatedBearerTimeoutMessage(Landroid/os/Message;)V
    .locals 0

    .line 1376
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->setRttDedicatedBearerTimeoutMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setSessionId(I)V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->appendSessionIdToLogTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session ID : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    .line 478
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setLogTag(I)V

    return-void
.end method

.method public setSrvccStarted(Z)V
    .locals 0

    .line 507
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSrvccStarted:Z

    return-void
.end method

.method public setStartCameraState(Z)V
    .locals 0

    .line 1480
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setStartCameraState(Z)V

    return-void
.end method

.method protected setTimerState(II)V
    .locals 0

    .line 1577
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mTimerState:[I

    aput p2, p0, p1

    return-void
.end method

.method public setTtyMode(I)V
    .locals 5

    .line 1108
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTtyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1111
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v4, 0xb

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1112
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1113
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v4, 0xe

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1114
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v4, 0xf

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1115
    :goto_1
    sget v4, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    if-eq p1, v4, :cond_2

    sget v4, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq p1, v4, :cond_2

    move v1, v2

    .line 1118
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTtyMode: curTty "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " desTty "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 1129
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 1130
    invoke-virtual {p1, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1131
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1132
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v1

    .line 1131
    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 1134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "profile"

    .line 1135
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x34

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public setUserCameraOff(Z)V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserCameraOff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUserCameraOff:Z

    return-void
.end method

.method public declared-synchronized setUsingCamera(Z)V
    .locals 0

    monitor-enter p0

    .line 564
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsUsingCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVideoCrbtSupportType(I)V
    .locals 0

    .line 495
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVideoCrbtSupportType:I

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    sget-object p2, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->CALL:Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - START OUTGOING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/log/IMSLog$LAZER_TYPE;Ljava/lang/String;)V

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mStartTime:J

    if-eqz p1, :cond_0

    .line 626
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xf

    .line 627
    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 626
    invoke-virtual {p2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 628
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p0

    return p0

    .line 621
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - OUTGOING FAIL by target is empty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/log/IMSLog$LAZER_TYPE;Ljava/lang/String;)V

    .line 622
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "start(): target is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Cannot make call: target URI is null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startCamera(I)V
    .locals 3

    .line 1437
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUserCameraOff:Z

    if-eqz v0, :cond_1

    .line 1438
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Camera is Off by user"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1442
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1450
    :cond_2
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    goto :goto_1

    .line 1445
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->getDefaultCameraId()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    if-gez p1, :cond_4

    const/4 p1, 0x1

    .line 1447
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    .line 1452
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastUsedCamera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1456
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    const/16 v0, 0x90

    const/16 v1, 0xb0

    if-eqz p1, :cond_5

    .line 1457
    iget p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1458
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/MediaProfile;->getWidth()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1459
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/MediaProfile;->getHeight()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 1460
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setPreviewResolution(II)V

    .line 1463
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->startCamera(II)V

    return-void
.end method

.method public startCameraForProvider(I)V
    .locals 7

    .line 912
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isNeedCameraRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 913
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUserCameraOff(Z)V

    .line 914
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isTPhoneRelaxMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x18

    .line 915
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "delay camera start for Incoming Call"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIIJ)V

    goto :goto_0

    .line 919
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 922
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "startCamera called with dummy type"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startLastUsedCamera()V

    :cond_2
    :goto_0
    return-void
.end method

.method public startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 849
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid IMS session."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startDtmf(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDtmfCode:I

    .line 1089
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "code"

    .line 1090
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "mode"

    const/4 v1, 0x1

    .line 1091
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "operation"

    .line 1092
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1093
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x38

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startECT(ILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public startIncoming()V
    .locals 1

    .line 638
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public startLastUsedCamera()V
    .locals 3

    .line 1467
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLastUsedCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    return-void
.end method

.method protected startRttDedicatedBearerTimer(J)V
    .locals 0

    .line 1380
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->startRttDedicatedBearerTimer(J)V

    return-void
.end method

.method public stopCamera()V
    .locals 2

    .line 1472
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->stopCamera(I)V

    const/4 v0, 0x0

    .line 1475
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsUsingCamera:Z

    return-void
.end method

.method public stopCameraForProvider(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 929
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isNeedCameraRequest()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 930
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUserCameraOff(Z)V

    .line 931
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 932
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    :cond_1
    return-void
.end method

.method public stopDtmf()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1098
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "code"

    .line 1099
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDtmfCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mode"

    const/4 v2, 0x1

    .line 1100
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "operation"

    const/4 v2, 0x2

    .line 1101
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1102
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x38

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 1104
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDtmfCode:I

    return-void
.end method

.method protected stopRttDedicatedBearerTimer()V
    .locals 0

    .line 1384
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->stopRttDedicatedBearerTimer()V

    return-void
.end method

.method public terminate(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 670
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V

    return-void
.end method

.method public terminate(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 675
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SRVCC Completed. But already switched to epdg, don\'t terminate call"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local Release ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 681
    :goto_0
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    .line 682
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndReason:I

    .line 684
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->quit:Z

    if-nez v3, :cond_5

    const/16 v3, 0x16

    if-ne p1, v3, :cond_2

    const/16 p0, 0x132

    .line 689
    invoke-virtual {v2, p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    goto :goto_1

    .line 690
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCause()I

    move-result p2

    if-eqz p2, :cond_3

    .line 691
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    invoke-virtual {p2, v0, p1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    goto :goto_1

    :cond_3
    const/16 p2, 0x1e

    if-ne p1, p2, :cond_4

    .line 693
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x135

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    invoke-virtual {p2, v0, p1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    goto :goto_1

    .line 695
    :cond_4
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEndType:I

    invoke-virtual {p2, v1, p1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    :goto_1
    return-void

    .line 685
    :cond_5
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Session already quitted"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transfer(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->transfer(ILjava/lang/String;)V

    return-void
.end method

.method public unregisterSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "profile"

    .line 712
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "cause"

    .line 713
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "reasonText"

    .line 714
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isSrvccAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 717
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SRVCC isn\'t available"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 720
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x34

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V
    .locals 3

    .line 1192
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCallProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 1194
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->builder()Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->build(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;

    .line 1195
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioCodec()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setAudioCodecTypeProfile(Ljava/lang/String;)V

    .line 1196
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setMediaProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    return-void
.end method

.method public updateQuantumPeerProfileStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    .line 1686
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1688
    :catch_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestMark is not Integer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    const-string v2, "NOTIFY_SESSION_ID"

    .line 1690
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRequestMark:I

    if-eq v1, v3, :cond_0

    .line 1691
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mRequestMark("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRequestMark:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is not matched with requestMark("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1694
    :cond_0
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getEncryptStatus()I

    move-result p4

    if-eqz p4, :cond_1

    .line 1696
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "skip updateQuantumPeerProfileStatus because Quantum Encryption status is already "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1700
    :cond_1
    iget-boolean p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsPeerProfileRetried:Z

    const/4 v1, 0x1

    if-nez p4, :cond_2

    const/16 p4, 0x193

    if-ne p1, p4, :cond_2

    .line 1701
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "retry peerProfileStatus by 403"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->requestQuantumPeerProfileStatus(ZZ)V

    return-void

    .line 1706
    :cond_2
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsPeerProfileRetried:Z

    .line 1707
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->checkQuantumPeerProfileCondition(I)Z

    move-result p4

    if-nez p4, :cond_3

    .line 1709
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->disableQuantumEncryption()V

    return-void

    .line 1713
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setPeerProfileStatus(I)V

    .line 1714
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setQtSessionId(Ljava/lang/String;)V

    .line 1715
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p1

    const/4 p4, 0x2

    invoke-virtual {p1, p4}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setCryptoMode(I)V

    .line 1716
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyQuantumEncryptionStatus(I)V

    const-string/jumbo p1, "ro.build.type"

    const-string/jumbo p4, "user"

    .line 1718
    invoke-static {p1, p4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Getting SessionId Success!!!"

    .line 1720
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    invoke-static {p4, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1723
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getQuantumEncryptionServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;

    move-result-object p1

    .line 1724
    new-instance p4, Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getLocalPhoneNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1725
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getRemoteTelNum()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->QUANTUM_ENCRYPT_KEY_LENGTH:I

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v8

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1726
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v9

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRequestMark:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object v3, p4

    move-object v7, p3

    invoke-direct/range {v3 .. v10}, Lcom/voltecrypt/service/SxRequestQMKeyEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1724
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;->onRequestQMKey(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_5

    .line 1728
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onRequestQMKey fail"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->disableQuantumEncryption()V

    return-void

    .line 1733
    :cond_5
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1734
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setQuantumSecurityInfo()V

    goto :goto_1

    .line 1736
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "In this case, no need to send QSM IPC to voice engine"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public updateQuantumQMKeyStatus(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 8

    .line 1764
    :try_start_0
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1766
    :catch_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "requestMark is not Integer"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 1768
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRequestMark:I

    if-eq p2, v0, :cond_0

    .line 1769
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mRequestMark("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRequestMark:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is not matched with requestMark("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1772
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getEncryptStatus()I

    move-result p2

    const/4 p5, 0x4

    if-eq p2, p5, :cond_7

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1773
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getPeerProfileStatus()I

    move-result p2

    const/4 p5, -0x1

    if-ne p2, p5, :cond_1

    goto/16 :goto_1

    .line 1777
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->checkQuantumQMKeyCondition(I)Z

    move-result p1

    const/4 p2, 0x6

    if-nez p1, :cond_3

    .line 1779
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKeyRetryCnt:I

    if-ge v0, p2, :cond_3

    if-ltz v0, :cond_3

    .line 1780
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getQuantumEncryptionServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;

    move-result-object p1

    .line 1781
    new-instance p2, Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getLocalPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1782
    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getRemoteTelNum()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->QUANTUM_ENCRYPT_KEY_LENGTH:I

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v5

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1783
    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v6

    iget p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRequestMark:I

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/voltecrypt/service/SxRequestQMKeyEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x1f4

    .line 1781
    invoke-interface {p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;->onRequestQMKeyWithDelay(Lcom/voltecrypt/service/SxRequestQMKeyEntity;I)I

    move-result p1

    if-ne p1, p5, :cond_2

    .line 1785
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onRequestQMKeyWithDelay fail"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->disableQuantumEncryption()V

    :cond_2
    return-void

    .line 1791
    :cond_3
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mKeyRetryCnt:I

    if-nez p1, :cond_4

    .line 1794
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->disableQuantumEncryption()V

    return-void

    :cond_4
    const-string/jumbo p1, "ro.build.type"

    const-string/jumbo p2, "user"

    .line 1798
    invoke-static {p1, p2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1800
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    const-string p3, "Getting SessionKey Success!!!"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    const/4 p1, 0x2

    .line 1803
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyQuantumEncryptionStatus(I)V

    .line 1805
    invoke-static {p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    .line 1806
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getSessionKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1807
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getSessionKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1808
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateQuantumQMKeyStatus sessionKey already updated"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1811
    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setSessionKey(Ljava/lang/String;)V

    .line 1814
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "updateQuantumQMKeyStatus all infos ready. setQuantumSecurityInfo()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setQuantumSecurityInfo()V

    return-void

    .line 1774
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "skip updateQuantumQMKeyStatus because Quantum Encryption is disabled or PeerProfileStatus is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
