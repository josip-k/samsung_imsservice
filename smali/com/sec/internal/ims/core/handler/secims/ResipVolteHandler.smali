.class public Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.super Lcom/sec/internal/ims/core/handler/VolteHandler;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeServiceXmlParser;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$CmcInfoXmlParser;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;
    }
.end annotation


# static fields
.field private static final ADD_CONF_PARTICIPANT:I = 0x0

.field private static final ALTERNATIVE_SERVICE:Ljava/lang/String; = "application/3gpp-ims+xml"

.field private static final CMC_INFO_MIME_TYPE:Ljava/lang/String; = "application/cmc-info+xml"

.field private static final DIALOG_EVENT_MIME_TYPE:Ljava/lang/String; = "application/dialog-info+xml"

.field private static final EVENT_CALL_STATE_CHANGE:I = 0x64

.field private static final EVENT_CDPN_INFO:I = 0x6b

.field private static final EVENT_CMC_INFO:I = 0x73

.field private static final EVENT_CONFERENCE_UPDATE:I = 0x66

.field private static final EVENT_CURRENT_LOCATION_DISCOVERY_DURING_EMERGENCY_CALL:I = 0x75

.field private static final EVENT_DEDICATED_BEARER_EVENT:I = 0x6e

.field private static final EVENT_DELAYED_CALL_STATE_CHANGE:I = 0xc8

.field private static final EVENT_DIALOG_EVENT_RECEIVED:I = 0x69

.field private static final EVENT_DTMF_INFO:I = 0x70

.field private static final EVENT_END_CALL_RESPONSE:I = 0x2

.field private static final EVENT_HOLD_CALL_RESPONSE:I = 0x4

.field private static final EVENT_INFO_CALL_RESPONSE:I = 0x7

.field private static final EVENT_MAKE_CALL_RESPONSE:I = 0x1

.field private static final EVENT_MERGE_CALL_RESPONSE:I = 0x3

.field private static final EVENT_MODIFY_CALL:I = 0x6a

.field private static final EVENT_NEW_INCOMING_CALL:I = 0x65

.field private static final EVENT_PULLING_CALL_RESPONSE:I = 0x6

.field private static final EVENT_QUANTUM_SECURITY_STATUS:I = 0x74

.field private static final EVENT_REFER_RECEIVED:I = 0x67

.field private static final EVENT_REFER_STATUS:I = 0x68

.field private static final EVENT_RESUME_CALL_RESPONSE:I = 0x5

.field private static final EVENT_RRC_CONNECTION:I = 0x6f

.field private static final EVENT_RTP_LOSS_RATE_NOTI:I = 0x6c

.field private static final EVENT_SIPMSG_INFO:I = 0x72

.field private static final EVENT_TEXT_INFO:I = 0x71

.field private static final EVENT_UPDATE_AUDIO_INTEFACE_RESPONSE:I = 0x8

.field private static final LOCATION_DISCOVERY:Ljava/lang/String; = "application/vnd.3gpp.current-location-discovery+xml"

.field private static final LOG_IDC_FW_TAG:Ljava/lang/String; = "[IDC][FW]ResipVolteHandler"

.field private static final LOG_TAG:Ljava/lang/String; = "ResipVolteHandler"

.field private static final MO_TIMEOUT_MILLIS:I = 0x7530

.field private static final MT_WAKELOCK_TIME:I = 0x3e8

.field private static final REMOVE_CONF_PARTICIPANT:I = 0x1

.field private static final URN_SOS:Ljava/lang/String; = "urn:service:sos"

.field private static final URN_SOS_AMBULANCE:Ljava/lang/String; = "urn:service:sos.ambulance"

.field private static final URN_SOS_FIRE:Ljava/lang/String; = "urn:service:sos.fire"

.field private static final URN_SOS_MARINE:Ljava/lang/String; = "urn:service:sos.marine"

.field private static final URN_SOS_MOUNTAIN:Ljava/lang/String; = "urn:service:sos.mountain"

.field private static final URN_SOS_POLICE:Ljava/lang/String; = "urn:service:sos.police"

.field private static final USSD_INDI_BY_MESSAGE_MIME_TYPE:Ljava/lang/String; = "application/ussd"

.field private static final USSD_MIME_TYPE:Ljava/lang/String; = "application/vnd.3gpp.ussd+xml"

.field private static final VCS_INFO_MIME_TYPE:Ljava/lang/String; = "application/text"

.field private static final VCS_SLIDING_END:I = -0x3

.field private static final VCS_SLIDING_INVALID:I = 0x0

.field private static final VCS_SLIDING_PRE:I = -0x2

.field private static final VCS_SLIDING_START:I = -0x1

.field private static final mMainSosSubserviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

.field private mAudioInterfaceThread:Landroid/os/HandlerThread;

.field private final mAudioPathUpdatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected mAutomaticMode:[Z

.field private final mCallList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentLocationDiscoveryDuringEmergencyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mOutOfService:[Z

.field private final mQuantumSecurityStatusEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected mRttMode:[I

.field private final mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private final mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected mTtyMode:[I

.field private final mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static bridge synthetic -$$Nest$monUpdateAudioInterfaceResponse(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;Lcom/sec/internal/helper/AsyncResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onUpdateAudioInterfaceResponse(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 216
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "urn:service:sos"

    const-string/jumbo v2, "urn:service:sos.ambulance"

    const-string/jumbo v3, "urn:service:sos.fire"

    const-string/jumbo v4, "urn:service:sos.marine"

    const-string/jumbo v5, "urn:service:sos.mountain"

    const-string/jumbo v6, "urn:service:sos.police"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mMainSosSubserviceSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/VolteHandler;-><init>(Landroid/os/Looper;)V

    .line 158
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 159
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 160
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 161
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 162
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 163
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 164
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 165
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 166
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 167
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 168
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 169
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioPathUpdatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 170
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 171
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 172
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCurrentLocationDiscoveryDuringEmergencyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 173
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mQuantumSecurityStatusEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 215
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceThread:Landroid/os/HandlerThread;

    .line 227
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    .line 415
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mContext:Landroid/content/Context;

    .line 416
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-void
.end method

.method private IsModifiableNeedToBeIgnored(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/constants/Mno;)Z
    .locals 6

    .line 3484
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3485
    :try_start_0
    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3487
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 3488
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 3489
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v4, :cond_0

    .line 3490
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3491
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getCmcProfile()Lcom/sec/internal/ims/core/handler/secims/CmcProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->getCmcType()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 3492
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3498
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    const/4 p1, 0x1

    if-eq p2, p0, :cond_2

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq p2, p0, :cond_2

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_BOTH:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq p2, p0, :cond_2

    if-le v3, p1, :cond_3

    .line 3500
    :cond_2
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 3503
    :cond_3
    monitor-exit v0

    return v1

    .line 3501
    :cond_4
    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    .line 3503
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private addCall(ILcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)V
    .locals 4

    .line 3428
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "ResipVolteHandler"

    .line 3429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add Call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3431
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private answerCall(IILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answerCallWithCallType: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cmcCallEstablishTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " idcExtra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const-string p1, "answerCallWithCallType: session not found."

    .line 1028
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->dumpCall()V

    return v2

    :cond_0
    if-ne p2, v2, :cond_1

    .line 1034
    iget p2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 1037
    :cond_1
    iget-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->answerCall(IILjava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    if-lez p0, :cond_2

    .line 1040
    iget-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object p0

    .line 1041
    invoke-static {p0}, Lcom/sec/internal/log/CmcPingTestLogger;->ping(Ljava/util/List;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private checkConfererenceCallData(Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I
    .locals 2

    .line 1391
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "ResipVolteHandler"

    if-nez p0, :cond_0

    const-string p0, "checkConfererenceCallData: conference server uri is not configured."

    .line 1392
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1394
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "checkConfererenceCallData: confSubscribe no global xml file"

    .line 1395
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1397
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "checkConfererenceCallData: subscribeDialogType no global xml file"

    .line 1398
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1400
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "checkConfererenceCallData: referUriType no global xml file"

    .line 1401
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1403
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "checkConfererenceCallData: removeReferUriType no global xml file"

    .line 1404
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1406
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, "checkConfererenceCallData: referUriAsserted no global xml file"

    .line 1407
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1409
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "checkConfererenceCallData: useAnonymousUpdate no global xml file"

    .line 1410
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private convertDedicatedBearerState(I)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private convertSlidingStage(Ljava/lang/String;)I
    .locals 2

    .line 1779
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_0

    :goto_0
    move p0, v1

    goto :goto_1

    :sswitch_0
    const-string/jumbo p0, "start"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo p0, "pre"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_2
    const-string p0, "end"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 1787
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertSlidingStage: invalid stage "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipVolteHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    const/4 p0, -0x2

    return p0

    :pswitch_2
    const/4 p0, -0x3

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_2
        0x1b2a3 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertToCallTypeBackward(I)I
    .locals 2

    const/4 p0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 3422
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToCallType: unknown call type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :pswitch_1
    const/16 p0, 0x13

    return p0

    :pswitch_2
    const/16 p0, 0x12

    return p0

    :pswitch_3
    const/16 p0, 0xf

    return p0

    :pswitch_4
    const/16 p0, 0xe

    return p0

    :pswitch_5
    const/16 p0, 0xc

    return p0

    :pswitch_6
    const/16 p0, 0xb

    return p0

    :pswitch_7
    const/16 p0, 0xa

    return p0

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :pswitch_9
    const/16 p0, 0x8

    return p0

    :pswitch_a
    const/4 p0, 0x7

    return p0

    :pswitch_b
    const/4 p0, 0x6

    return p0

    :pswitch_c
    const/4 p0, 0x5

    return p0

    :pswitch_d
    const/4 p0, 0x4

    return p0

    :pswitch_e
    const/4 p0, 0x3

    return p0

    :pswitch_f
    const/4 p0, 0x2

    :pswitch_10
    return p0

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
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private convertToCallTypeForward(I)I
    .locals 2

    const/4 p0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 3382
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToCallType:: unknown call type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :pswitch_1
    const/16 p0, 0x13

    return p0

    :pswitch_2
    const/16 p0, 0x12

    return p0

    :pswitch_3
    const/16 p0, 0xf

    return p0

    :pswitch_4
    const/16 p0, 0xe

    :pswitch_5
    return p0

    :pswitch_6
    const/16 p0, 0xc

    return p0

    :pswitch_7
    const/16 p0, 0xb

    return p0

    :pswitch_8
    const/16 p0, 0xa

    return p0

    :pswitch_9
    const/16 p0, 0x9

    return p0

    :pswitch_a
    const/16 p0, 0x8

    return p0

    :pswitch_b
    const/4 p0, 0x7

    return p0

    :pswitch_c
    const/4 p0, 0x6

    return p0

    :pswitch_d
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_f
    const/4 p0, 0x3

    return p0

    :pswitch_10
    const/4 p0, 0x2

    :pswitch_11
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private convertToVolteState(II)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_6

    const/4 p0, 0x2

    if-eq p1, p0, :cond_5

    const/4 p0, 0x4

    if-eq p1, p0, :cond_4

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    const/16 p0, 0x12

    if-eq p1, p0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 3340
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "convertToVolteState: unknown Call state "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipVolteHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3317
    :pswitch_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->REFRESHFAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3334
    :pswitch_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->SESSIONPROGRESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    :pswitch_2
    if-eqz p2, :cond_0

    const/16 p0, 0x462

    if-eq p2, p0, :cond_0

    .line 3329
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3331
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->MODIFIED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3313
    :pswitch_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_BOTH:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3325
    :pswitch_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->EARLY_MEDIA_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    :pswitch_5
    if-eqz p2, :cond_1

    .line 3320
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3322
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3311
    :pswitch_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3309
    :pswitch_7
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3315
    :pswitch_8
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ESTABLISHED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3338
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->EXTEND_TO_CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3336
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->FORWARDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3307
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->RINGING_BACK:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3303
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CALLING:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    .line 3305
    :cond_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->TRYING:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
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

.method private createCmcInfoContents(IIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .locals 8

    const-string p0, "external-call-id"

    const-string p1, "extra"

    const-string/jumbo v0, "record-event"

    const-string v1, "cmc-info-data"

    const-string v2, "ResipVolteHandler"

    const-string v3, ""

    .line 705
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 706
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 709
    :try_start_0
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    .line 710
    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    .line 711
    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 712
    invoke-interface {v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 714
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 716
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 718
    invoke-interface {v4, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 719
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    invoke-interface {v4, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 722
    invoke-interface {v4, v3, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 723
    invoke-interface {v4, p4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 724
    invoke-interface {v4, v3, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 726
    invoke-interface {v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 728
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to createCmcInfoContents()"

    .line 730
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    :goto_0
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const-string p1, "application/cmc-info+xml"

    .line 734
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 735
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 736
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 737
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 738
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 739
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 741
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object p0

    .line 743
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createCmcInfoContents: built contents - \n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private createUssdContents(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .locals 10

    const-string/jumbo p0, "ussd-string"

    const-string v0, "error-code"

    const-string v1, "UnstructuredSS-Notify"

    const-string v2, "language"

    const-string/jumbo v3, "ussd-data"

    const-string v4, "ResipVolteHandler"

    const-string v5, ""

    .line 644
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 645
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 648
    :try_start_0
    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    .line 649
    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    .line 650
    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 651
    invoke-interface {v6, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 654
    sget-object v8, Lcom/sec/internal/constants/Mno;->SMART_CAMBODIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, v8, :cond_3

    .line 655
    invoke-interface {v6, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 656
    sget-object v8, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    if-ne p1, v8, :cond_0

    const-string/jumbo p1, "un"

    .line 657
    invoke-interface {v6, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 658
    :cond_0
    sget-object v8, Lcom/sec/internal/constants/Mno;->H3G_AT:Lcom/sec/internal/constants/Mno;

    if-eq p1, v8, :cond_2

    sget-object v8, Lcom/sec/internal/constants/Mno;->TIGO_BOLIVIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v8, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "en"

    .line 661
    invoke-interface {v6, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo p1, "undefined"

    .line 659
    invoke-interface {v6, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 663
    :goto_1
    invoke-interface {v6, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    const/4 p1, 0x3

    if-ne p3, p1, :cond_4

    .line 667
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createUssdContents: error - \n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-interface {v6, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 669
    invoke-interface {v6, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 670
    invoke-interface {v6, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_4
    const/4 p1, 0x4

    if-ne p3, p1, :cond_5

    const-string p0, "createUssdContents: notify response"

    .line 672
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-interface {v6, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 674
    invoke-interface {v6, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 676
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createUssdContents: dialstring - \n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-interface {v6, v5, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 678
    invoke-interface {v6, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 679
    invoke-interface {v6, v5, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 682
    :goto_2
    invoke-interface {v6, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 684
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "Failed to createUssdContents()"

    .line 686
    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    :goto_3
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const-string p1, "application/vnd.3gpp.ussd+xml"

    .line 690
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 691
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 692
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 693
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 694
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 695
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 697
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object p0

    .line 699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createUssdContents: built contents - \n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private createVcsInfoContents(Ljava/lang/String;IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .locals 15

    move-object/from16 v0, p1

    const-string/jumbo v1, "positionexit"

    const-string v2, ")"

    const-string v3, ", "

    const-string/jumbo v4, "position"

    const-string v5, "msml"

    const-string v6, ""

    .line 749
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createVcsInfoContents event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ResipVolteHandler"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 751
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 754
    :try_start_0
    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v10, "UTF-8"

    const/4 v11, 0x0

    .line 755
    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    .line 756
    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 757
    invoke-interface {v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "version"

    const-string v11, "1.1"

    .line 758
    invoke-interface {v7, v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "touch"

    .line 760
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "event"

    const-string/jumbo v12, "slide"

    const-string/jumbo v13, "send"

    if-nez v10, :cond_1

    :try_start_1
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    invoke-interface {v7, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 781
    invoke-interface {v7, v6, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 782
    invoke-interface {v7, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 761
    :cond_1
    :goto_0
    invoke-interface {v7, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "("

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 763
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v0, "move"

    .line 767
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "digits"

    .line 768
    invoke-interface {v7, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "dur"

    .line 769
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 771
    invoke-interface {v7, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 773
    invoke-interface {v7, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 774
    invoke-interface {v7, v6, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 775
    invoke-interface {v7, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 777
    invoke-interface {v7, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 778
    invoke-interface {v7, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 785
    :goto_1
    invoke-interface {v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 786
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to createVcsInfoContents()"

    .line 788
    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    :goto_2
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const-string v1, "application/text"

    .line 792
    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 793
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    const-string v4, "\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 794
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 795
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 796
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 797
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 799
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v0

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createVcsInfoContents: built contents - \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private dumpCall()V
    .locals 6

    .line 3470
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "ResipVolteHandler"

    .line 3471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call List Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 3472
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3473
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3474
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v2, :cond_0

    const-string v3, "ResipVolteHandler"

    .line 3477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session Id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in the list"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3480
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getCall(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .locals 4

    .line 3456
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3457
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3458
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3459
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v2, :cond_0

    .line 3461
    iget v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    if-ne v3, p1, :cond_0

    .line 3462
    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3465
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .locals 4

    .line 3442
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3443
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3444
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3445
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v2, :cond_0

    .line 3447
    iget v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    if-ne v3, p1, :cond_0

    .line 3448
    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3451
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2072
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    const-string p0, "mmtel-video"

    .line 2077
    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getParticipantStatus(I)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x4

    if-ne p1, p0, :cond_3

    return p0

    :cond_3
    const/4 p0, 0x5

    if-ne p1, p0, :cond_4

    return p0

    :cond_4
    const/4 p0, 0x6

    if-ne p1, p0, :cond_5

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1

    const/4 v0, 0x0

    .line 1907
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method private isOutOfService(I)Z
    .locals 3

    const-string v0, "ResipVolteHandler"

    .line 1603
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOutOfService() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mOutOfService:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1604
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mOutOfService:[Z

    aget-boolean p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "isOutOfService: mOutOfService out of bound"

    .line 1606
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isSendingCmosInfoNeeded(Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;I)Z
    .locals 1

    .line 2507
    sget-object p0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    return v0

    .line 2511
    :cond_0
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->touchScreenEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 2517
    :cond_1
    iget-object p0, p2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->isIncomingCall()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 2521
    :cond_2
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_3

    return v0

    .line 2525
    :cond_3
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result p0

    const/4 p1, 0x2

    const/4 p2, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x4

    if-eq p0, p1, :cond_4

    if-eq p0, p2, :cond_4

    return v0

    :cond_4
    const/16 p0, 0x9

    if-eq p4, p0, :cond_6

    const/16 p0, 0xa

    if-eq p4, p0, :cond_6

    const/16 p0, 0xe

    if-ne p4, p0, :cond_5

    goto :goto_0

    :cond_5
    const-string p0, "ResipVolteHandler"

    const-string/jumbo p1, "send CMOS info"

    .line 2538
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_6
    :goto_0
    return v0
.end method

.method private notifyCallStatus(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;I)V
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    if-eqz p3, :cond_0

    .line 2081
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    if-eqz p3, :cond_1

    .line 2083
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v7

    long-to-int v7, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-string v8, ""

    if-eqz p3, :cond_2

    .line 2084
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v8

    :goto_2
    if-eqz p3, :cond_3

    .line 2085
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-eqz p3, :cond_4

    .line 2086
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v11

    long-to-int v11, v11

    goto :goto_4

    :cond_4
    const/16 v11, 0x1e0

    :goto_4
    if-eqz p3, :cond_5

    .line 2087
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v12

    long-to-int v12, v12

    goto :goto_5

    :cond_5
    const/16 v12, 0x280

    :goto_5
    if-eqz p3, :cond_6

    .line 2088
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->conferenceSupport()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    :goto_6
    if-eqz p3, :cond_7

    .line 2089
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    goto :goto_7

    :cond_7
    const/4 v15, 0x0

    :goto_7
    if-eqz v10, :cond_8

    .line 2090
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x1

    goto :goto_8

    :cond_8
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v18, v14

    if-eqz p3, :cond_9

    .line 2091
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->localVideoRtpPort()J

    move-result-wide v13

    long-to-int v13, v13

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    move/from16 v19, v7

    if-eqz p3, :cond_a

    .line 2092
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->localVideoRtcpPort()J

    move-result-wide v6

    long-to-int v6, v6

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    :goto_a
    move v7, v15

    if-eqz p3, :cond_b

    .line 2093
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoRtpPort()J

    move-result-wide v14

    long-to-int v14, v14

    move v15, v14

    goto :goto_b

    :cond_b
    const/4 v15, 0x0

    :goto_b
    move/from16 v21, v5

    if-eqz p3, :cond_c

    .line 2094
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoRtcpPort()J

    move-result-wide v4

    long-to-int v14, v4

    move v4, v14

    goto :goto_c

    :cond_c
    const/4 v4, 0x0

    :goto_c
    if-eqz p3, :cond_d

    .line 2095
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->serviceUrn()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_d
    const/4 v5, 0x0

    :goto_d
    move/from16 v22, v4

    if-eqz p3, :cond_e

    .line 2096
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->retryAfter()J

    move-result-wide v3

    long-to-int v14, v3

    move v3, v14

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    :goto_e
    if-eqz p3, :cond_10

    .line 2097
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->localHoldTone()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_f

    :cond_f
    const/4 v4, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v4, 0x1

    :goto_10
    if-eqz p3, :cond_11

    .line 2098
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->historyInfo()Ljava/lang/String;

    move-result-object v14

    goto :goto_11

    :cond_11
    move-object v14, v8

    :goto_11
    if-eqz p3, :cond_12

    .line 2099
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->dtmfEvent()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v41, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v41

    goto :goto_12

    :cond_12
    move-object/from16 v23, v8

    :goto_12
    if-eqz p3, :cond_14

    .line 2100
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cvoEnabled()Z

    move-result v24

    if-eqz v24, :cond_13

    goto :goto_13

    :cond_13
    const/4 v1, 0x0

    goto :goto_14

    :cond_14
    :goto_13
    const/4 v1, 0x1

    :goto_14
    if-eqz p3, :cond_15

    .line 2101
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->alertInfo()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v24

    goto :goto_15

    :cond_15
    const/16 v25, 0x0

    :goto_15
    move/from16 v24, v3

    move/from16 v26, v4

    if-eqz p3, :cond_16

    .line 2102
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->videoCrbtType()J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_16

    :cond_16
    const/4 v3, 0x0

    :goto_16
    if-eqz p3, :cond_17

    .line 2103
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cmcDeviceId()Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    :cond_17
    move-object/from16 v4, v23

    :goto_17
    move/from16 v27, v3

    move-object/from16 v28, v4

    if-eqz p3, :cond_18

    .line 2104
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioRxTrackId()J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_18

    :cond_18
    const/4 v3, 0x0

    :goto_18
    if-eqz p3, :cond_19

    .line 2105
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioBitRate()Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    :cond_19
    move-object/from16 v4, v23

    :goto_19
    if-eqz p3, :cond_1a

    .line 2106
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cmcCallTime()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v30, v29

    goto :goto_1a

    :cond_1a
    move-object/from16 v30, v23

    :goto_1a
    if-eqz p3, :cond_1b

    .line 2107
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->featureCaps()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v31, v17

    goto :goto_1b

    :cond_1b
    const/16 v31, 0x0

    :goto_1b
    move/from16 v17, v3

    move-object/from16 v29, v4

    if-eqz p3, :cond_1c

    .line 2108
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioEarlyMediaDir()J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_1c

    :cond_1c
    const/4 v3, 0x0

    :goto_1c
    if-eqz p3, :cond_1d

    .line 2109
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->delayRinging()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v32, 0x1

    goto :goto_1d

    :cond_1d
    const/16 v32, 0x0

    .line 2110
    :goto_1d
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    goto :goto_1e

    :cond_1e
    sget-object v4, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 2111
    :goto_1e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_1f

    move-object/from16 v34, v5

    goto :goto_1f

    :cond_1f
    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v34, v5

    move-object/from16 v5, v33

    :goto_1f
    if-eqz p3, :cond_20

    .line 2112
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->idcExtra()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v35, v33

    move-object/from16 v33, v4

    goto :goto_20

    :cond_20
    move-object/from16 v33, v4

    move-object/from16 v35, v23

    .line 2114
    :goto_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v3

    const-string v3, "notifyCallStatus() session: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callstate: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callType: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v21

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", statusCode: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v19

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reasonPhrase: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", remoteVideoCapa: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", localVideoCapa: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isFocus: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", conferenceSupport: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", localVideoRtpPort: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", localVideoRtcpPort: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", RemoteVideoRtpPort: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", RemoteVideoRtcpPort: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v22

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v18, v12

    const-string v12, ", ServiceUrn: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", retryAfter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v24

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", historyInfo: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", dtmfEvent: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", holdTone: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v26

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v21, v14

    const-string v14, ", cvoEnabled : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", AlertInfo : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v25

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v1

    const-string v1, ", videoCrbtType : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v27

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v24, v14

    const-string v14, ", cmcDeviceId : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v28

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", audioRxTrackId : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v17

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", audioBitRate : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v29

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", cmcCallTime : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v30

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v25, v14

    const-string v14, ", featureCaps: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v31

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v26, v14

    const-string v14, ", audioEarlyMediaDir: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v36

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", delayRinging: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v32

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v27, v14

    const-string v14, ", idcExtra: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v35

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v14

    const-string v14, "ResipVolteHandler"

    .line 2114
    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_21

    .line 2144
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setConferenceSupported(Ljava/lang/String;)V

    :cond_21
    if-eqz v7, :cond_23

    .line 2148
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const-string v7, "1"

    invoke-virtual {v4, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIsFocus(Ljava/lang/String;)V

    .line 2149
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    move-object/from16 v7, v33

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE_EG:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->PROXIMUS:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELENOR_NORWAY:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->ZAIN_KSA:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->MTN_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->ETISALAT_EG:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->DIGI_HUNGARY:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->XL_ID:Lcom/sec/internal/constants/Mno;

    if-eq v7, v4, :cond_22

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v4, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 2154
    invoke-virtual {v7, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    if-eq v3, v2, :cond_22

    const/4 v2, 0x5

    if-ne v3, v2, :cond_24

    :cond_22
    const/16 v16, 0x0

    goto :goto_21

    :cond_23
    move-object/from16 v7, v33

    .line 2159
    :cond_24
    :goto_21
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v7, v2, :cond_26

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELENOR_SWE:Lcom/sec/internal/constants/Mno;

    if-eq v7, v2, :cond_26

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_EG:Lcom/sec/internal/constants/Mno;

    if-eq v7, v2, :cond_26

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-eq v7, v2, :cond_26

    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v7, v2, :cond_26

    sget-object v2, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-eq v7, v2, :cond_26

    sget-object v2, Lcom/sec/internal/constants/Mno;->WE_EG:Lcom/sec/internal/constants/Mno;

    if-eq v7, v2, :cond_26

    .line 2162
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isIndia()Z

    move-result v2

    if-nez v2, :cond_26

    sget-object v2, Lcom/sec/internal/constants/Mno;->XL_ID:Lcom/sec/internal/constants/Mno;

    if-eq v7, v2, :cond_26

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 2163
    invoke-virtual {v7, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    if-eq v3, v2, :cond_26

    const/4 v2, 0x5

    if-ne v3, v2, :cond_25

    goto :goto_22

    :cond_25
    const/4 v2, 0x0

    goto :goto_23

    :cond_26
    :goto_22
    const/4 v2, 0x1

    .line 2165
    :goto_23
    iget-boolean v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v4, :cond_27

    if-eqz v2, :cond_27

    const/16 v16, 0x0

    .line 2169
    :cond_27
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-object/from16 v4, p2

    move/from16 v31, v5

    if-ne v4, v2, :cond_28

    sget-object v5, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v7, v5, :cond_28

    const/16 v16, 0x0

    .line 2173
    :cond_28
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v5

    move/from16 v32, v1

    const/4 v1, 0x2

    if-nez v5, :cond_2a

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_29

    goto :goto_24

    :cond_29
    move-object/from16 v1, p0

    move/from16 v33, v11

    move/from16 v5, v16

    goto :goto_26

    .line 2174
    :cond_2a
    :goto_24
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_2b

    if-ne v3, v1, :cond_2b

    const/16 v5, 0xb0

    if-ne v11, v5, :cond_2b

    const-string v5, "force to set modifiable to false for 3G QCIF Video Call"

    .line 2175
    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_25

    :cond_2b
    move/from16 v5, v16

    .line 2178
    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v11

    const-string/jumbo v11, "setModifyHeader : "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setModifyHeader(Ljava/lang/String;)V

    move-object/from16 v1, p0

    :goto_26
    move/from16 v11, v22

    .line 2182
    invoke-direct {v1, v0, v4, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->IsModifiableNeedToBeIgnored(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/constants/Mno;)Z

    move-result v22

    if-eqz v22, :cond_2c

    const-string v5, "force to set modifiable to false"

    .line 2184
    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    goto :goto_27

    :cond_2c
    move/from16 v22, v5

    .line 2187
    :goto_27
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq v4, v5, :cond_2d

    if-eq v4, v2, :cond_2d

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_BOTH:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v4, v5, :cond_2f

    :cond_2d
    sget-object v5, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v7, v5, :cond_2e

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v7, v5, :cond_2f

    :cond_2e
    const-string v5, "force to set modifiable to false when call is held!!"

    .line 2190
    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    .line 2193
    :cond_2f
    sget-object v5, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v7, v5, :cond_30

    const/4 v5, 0x7

    if-ne v3, v5, :cond_30

    const-string v5, "force to set modifiable to true for Docomo"

    .line 2195
    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_28

    :cond_30
    move/from16 v5, v22

    .line 2198
    :goto_28
    sget-object v4, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    const/16 v1, 0x2c5

    if-eq v7, v4, :cond_32

    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v7, v4, :cond_31

    goto :goto_29

    :cond_31
    move/from16 v4, v19

    goto :goto_2a

    :cond_32
    :goto_29
    move/from16 v4, v19

    if-ne v4, v1, :cond_33

    const-string v1, "deleteTcpClientSocket() at INVITE FLUSH"

    .line 2199
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 2203
    :cond_33
    :goto_2a
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x196

    if-eq v4, v1, :cond_34

    const/16 v1, 0x198

    if-eq v4, v1, :cond_34

    const/16 v1, 0x2c5

    if-ne v4, v1, :cond_35

    :cond_34
    const-string v1, "deleteTcpClientSocket() at INVITE FLUSH for KOR"

    .line 2204
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 2208
    :cond_35
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    if-ne v7, v1, :cond_36

    const/16 v1, 0x156f

    if-ne v4, v1, :cond_36

    const-string v1, "Session Terminated by UE"

    .line 2209
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "Remote side ends the call normally."

    .line 2210
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    const/4 v4, 0x0

    goto :goto_2b

    :cond_36
    move-object/from16 v1, p2

    .line 2215
    :goto_2b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_39

    move-object/from16 v19, v7

    const-string v7, "Q.850"

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    const-string v7, "#:"

    .line 2216
    invoke-virtual {v9, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move/from16 v22, v5

    .line 2217
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v35, v4

    const/16 v20, 0x0

    aget-object v4, v7, v20

    move-object/from16 v20, v2

    move-object/from16 v37, v9

    move-object/from16 v39, v25

    move/from16 v40, v27

    move-object/from16 v38, v28

    move-object/from16 v2, v29

    move/from16 v9, v36

    move-object/from16 v25, v21

    move/from16 v21, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v26

    move/from16 v41, v17

    move-object/from16 v17, v1

    move/from16 v1, v41

    invoke-virtual {v5, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRejectProtocol(Ljava/lang/String;)V

    .line 2218
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v5, 0x1

    aget-object v27, v7, v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRejectCode(I)V

    .line 2219
    array-length v4, v7

    const/4 v5, 0x3

    if-lt v4, v5, :cond_37

    .line 2220
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v5, 0x2

    aget-object v5, v7, v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRejectText(Ljava/lang/String;)V

    goto :goto_2d

    .line 2222
    :cond_37
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object/from16 v5, v23

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRejectText(Ljava/lang/String;)V

    goto :goto_2d

    :cond_38
    move-object/from16 v20, v2

    move/from16 v35, v4

    move/from16 v22, v5

    goto :goto_2c

    :cond_39
    move-object/from16 v20, v2

    move/from16 v35, v4

    move/from16 v22, v5

    move-object/from16 v19, v7

    :goto_2c
    move-object/from16 v37, v9

    move-object/from16 v39, v25

    move/from16 v40, v27

    move-object/from16 v38, v28

    move-object/from16 v2, v29

    move/from16 v9, v36

    move-object/from16 v25, v21

    move/from16 v21, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v26

    move/from16 v41, v17

    move-object/from16 v17, v1

    move/from16 v1, v41

    .line 2226
    :goto_2d
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v13}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setLocalVideoRTPPort(I)V

    .line 2227
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setLocalVideoRTCPPort(I)V

    .line 2228
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v15}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRemoteVideoRTPPort(I)V

    .line 2229
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v10}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRemoteVideoRTCPPort(I)V

    .line 2230
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v12}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setLocalHoldTone(Z)V

    .line 2231
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setDtmfEvent(Ljava/lang/String;)V

    .line 2232
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    if-eqz v11, :cond_3a

    const/4 v5, 0x0

    goto :goto_2e

    :cond_3a
    const/4 v5, -0x1

    :goto_2e
    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoOrientation(I)V

    .line 2233
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAlertInfo(Ljava/lang/String;)V

    .line 2234
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v4, v32

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoCrbtType(I)V

    .line 2235
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v11, v33

    invoke-virtual {v3, v11}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoWidth(I)V

    .line 2236
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v12, v18

    invoke-virtual {v3, v12}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoHeight(I)V

    .line 2237
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioRxTrackId(I)V

    .line 2238
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioBitRate(Ljava/lang/String;)V

    .line 2239
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setFeatureCaps(Ljava/lang/String;)V

    .line 2240
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioEarlyMediaDir(I)V

    .line 2241
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v2, v40

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setDelayRinging(Z)V

    .line 2242
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v14, v31

    invoke-virtual {v1, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRetryAfter(I)V

    .line 2243
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3b

    if-nez v2, :cond_3c

    .line 2244
    :cond_3b
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object/from16 v8, v25

    invoke-virtual {v1, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setHistoryInfo(Ljava/lang/String;)V

    .line 2246
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoOrientation_resip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v17

    move-object/from16 v1, v20

    if-ne v3, v1, :cond_3d

    .line 2249
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRemoteHeld(Z)V

    const/4 v5, 0x0

    goto :goto_2f

    :cond_3d
    const/4 v4, 0x1

    .line 2251
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRemoteHeld(Z)V

    .line 2254
    :goto_2f
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    move/from16 v6, v21

    .line 2255
    invoke-virtual {v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCallType(I)V

    .line 2256
    iget v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 2257
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setPeerAddr(Lcom/sec/ims/util/NameAddr;)V

    .line 2258
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 2259
    new-instance v3, Lcom/sec/ims/util/SipError;

    move/from16 v6, v35

    move-object/from16 v8, v37

    invoke-direct {v3, v6, v8}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 2260
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    move/from16 v3, v22

    .line 2261
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setRemoteVideoCapa(Z)V

    .line 2262
    invoke-virtual {v1, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setRetryAfter(I)V

    .line 2263
    iget-boolean v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setConference(Z)V

    move-object/from16 v3, v38

    .line 2264
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCmcDeviceId(Ljava/lang/String;)V

    move-object/from16 v3, v39

    .line 2265
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCmcCallTime(Ljava/lang/String;)V

    .line 2266
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    move-object/from16 v3, v30

    .line 2267
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setIdcExtra(Ljava/lang/String;)V

    :cond_3e
    if-eqz p3, :cond_48

    .line 2270
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 2271
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v3

    const-string v6, "application/3gpp-ims+xml"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2274
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v3

    .line 2273
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeServiceXmlParser;->parseXml(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;

    move-result-object v3

    .line 2275
    iget-object v6, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->INITIAL_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v6, v7, :cond_3f

    const-string v0, "initial registration handling required!"

    .line 2276
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeService(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;)V

    .line 2278
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceType(Ljava/lang/String;)V

    .line 2279
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceReason(Ljava/lang/String;)V

    move-object/from16 v7, v34

    .line 2280
    invoke-virtual {v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_3f
    move-object/from16 v7, v34

    .line 2281
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-eq v6, v8, :cond_41

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v6, v9, :cond_40

    goto :goto_30

    .line 2311
    :cond_40
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    move-object/from16 v6, v19

    if-ne v6, v0, :cond_48

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "For CMCC emergency call alternative-service handling required!"

    .line 2312
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceType(Ljava/lang/String;)V

    .line 2314
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceReason(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_41
    :goto_30
    move-object/from16 v6, v19

    .line 2283
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v9

    .line 2284
    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getSupport380PolicyByEmcbs()Z

    move-result v10

    if-eqz v10, :cond_42

    sget-object v10, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v9, v10, :cond_42

    goto :goto_31

    :cond_42
    move v4, v5

    :goto_31
    const-string/jumbo v5, "urn:service:sos"

    if-eqz v4, :cond_43

    .line 2287
    :try_start_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 2288
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_43

    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mMainSosSubserviceSet:Ljava/util/Set;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 2290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alternative-service handling NOT required! serviceUrn: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " eMCBS: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 2292
    :cond_43
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSosUrnRequired()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2293
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 2294
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 2295
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alternative-service handling NOT required!, eMCBS: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 2298
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alternative-service handling required!, eMCBS: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeService(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;)V

    .line 2300
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceType(Ljava/lang/String;)V

    .line 2301
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceReason(Ljava/lang/String;)V

    .line 2302
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v6, v0, :cond_46

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_46
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v0, v8, :cond_47

    .line 2304
    invoke-virtual {v1, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V

    goto :goto_32

    .line 2307
    :cond_47
    invoke-virtual {v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_32

    :catch_0
    move-exception v0

    const-string v3, "notifyCallStatus: error parsing AlternativeService xml"

    .line 2319
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    :goto_32
    move/from16 v2, p4

    if-lez v2, :cond_49

    const/16 v0, 0xc8

    move-object/from16 v3, p0

    .line 2324
    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, v2

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_49
    move-object/from16 v3, p0

    .line 2328
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private notifyIncomingCall(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V
    .locals 12

    const-string v0, "ResipVolteHandler"

    if-nez p1, :cond_0

    const-string p0, "notifyIncomingCall : incoming call instance is null!!"

    .line 2030
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 2034
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_7

    .line 2041
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 2042
    :goto_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v4

    long-to-int v4, v4

    .line 2043
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v5

    long-to-int v5, v5

    .line 2045
    iget-object v6, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 2046
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_4

    .line 2048
    :cond_3
    iget-object v6, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIsFocus(Ljava/lang/String;)V

    .line 2050
    :cond_4
    iget-object v6, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cvoEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, -0x1

    :goto_2
    invoke-virtual {v6, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoOrientation(I)V

    .line 2051
    iget-object v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getVideoCrbtSupportType()I

    move-result v3

    const/4 v6, 0x2

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_6

    .line 2052
    iget-object v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->delayRinging()Z

    move-result p2

    invoke-virtual {v3, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setDelayRinging(Z)V

    :cond_6
    move v9, v1

    goto :goto_3

    :cond_7
    const/16 v4, 0x1e0

    const/16 v5, 0x280

    move v9, v3

    .line 2056
    :goto_3
    iget-object p2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p2, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoWidth(I)V

    .line 2057
    iget-object p2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p2, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoHeight(I)V

    .line 2059
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    iget-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    iget v5, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    iget-object v7, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    const/4 v8, 0x0

    const-string v10, ""

    iget-object v11, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object v3, p2

    move v6, v2

    invoke-direct/range {v3 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;-><init>(Lcom/sec/ims/ImsRegistration;IILcom/sec/ims/util/NameAddr;ZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 2062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyIncomingCall() session: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V
    .locals 9

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUssdEvent() session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;-><init>()V

    .line 1949
    iget v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setSessionID(I)V

    .line 1950
    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1952
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    .line 1954
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    if-ne p2, v3, :cond_0

    .line 1955
    new-instance v1, Lcom/sec/ims/util/SipError;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    goto/16 :goto_4

    .line 1956
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    if-ne p2, v3, :cond_8

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz p3, :cond_7

    .line 1957
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1958
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/vnd.3gpp.ussd+xml"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0xb

    if-eqz v5, :cond_3

    .line 1959
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1961
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->getInstance()Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    move-result-object v5

    .line 1962
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v7

    .line 1961
    invoke-static {v5, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->-$$Nest$mparseUssdXml(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;

    move-result-object v5

    .line 1963
    iget-object v7, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mString:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    .line 1964
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 1965
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    .line 1966
    iget-boolean v5, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->hasErrorCode:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_2

    const-string v2, "BYE from NW has <error-code>"

    .line 1967
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1968
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    goto :goto_0

    .line 1971
    :cond_1
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->getVolteConstantsUssdStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    :cond_2
    :goto_0
    const/16 v2, 0x94

    .line 1977
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setDCS(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v5, "notifyCallStatus: error parsing USSD xml"

    .line 1979
    invoke-static {v1, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1981
    :cond_3
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "application/ussd"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1982
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->rawContentsLength()I

    move-result v2

    .line 1983
    new-array v5, v2, [B

    move v7, v4

    :goto_1
    if-ge v7, v2, :cond_4

    .line 1986
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->rawContents(I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    if-le v2, v7, :cond_5

    add-int/lit8 v8, v2, -0x1

    .line 1991
    aget-byte v8, v5, v8

    if-nez v8, :cond_5

    const-string v8, "Remove invalid last byte (0x00)"

    .line 1992
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, -0x1

    .line 1996
    :cond_5
    new-array v1, v2, [B

    .line 1997
    invoke-static {v5, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1998
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    .line 1999
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 2000
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    goto :goto_2

    .line 2002
    :cond_6
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    .line 2004
    :goto_2
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setDCS(I)V

    .line 2008
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->getData()[B

    move-result-object v1

    if-nez v1, :cond_8

    new-array v1, v4, [B

    .line 2009
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    .line 2010
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    :cond_8
    :goto_4
    if-eqz p3, :cond_9

    .line 2015
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCSFBbySIPErrorCode(I)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    if-eq p2, v1, :cond_9

    .line 2017
    new-instance p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;

    invoke-direct {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;-><init>()V

    .line 2018
    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setSessionID(I)V

    .line 2019
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    .line 2020
    new-instance p1, Lcom/sec/ims/util/SipError;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 2021
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    .line 2025
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onCallStateChange(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2543
    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;

    .line 2544
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->session()J

    move-result-wide v2

    long-to-int v2, v2

    .line 2545
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v3

    .line 2548
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2550
    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 2553
    :goto_0
    invoke-static {v6}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    const-string v8, "ResipVolteHandler"

    .line 2554
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCallStateChange() session: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " calltype : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2554
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    sget-object v8, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/16 v9, 0x12

    const/16 v10, 0xe

    const/16 v11, 0x8

    const/4 v12, 0x6

    const/16 v13, 0xb

    const/4 v14, 0x1

    if-ne v7, v8, :cond_6

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v8

    if-ne v8, v12, :cond_6

    if-eq v3, v11, :cond_1

    if-eq v3, v13, :cond_1

    if-eq v3, v10, :cond_1

    if-ne v3, v9, :cond_6

    .line 2562
    :cond_1
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v8

    const/4 v15, 0x0

    .line 2563
    :goto_1
    :try_start_0
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v15, v5, :cond_5

    .line 2564
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2565
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v5, :cond_2

    const-string v9, "ResipVolteHandler"

    .line 2567
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "candidate callType :  "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v5, :cond_4

    .line 2569
    iget v9, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    if-ne v9, v12, :cond_4

    :cond_3
    const-string v4, "ResipVolteHandler"

    const-string v9, "Find conference call!!"

    .line 2572
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v4

    iput v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2575
    iput-boolean v14, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 2576
    iget-object v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setConfSessionId(I)V

    move-object v4, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/16 v9, 0x12

    const/16 v10, 0xe

    const/16 v13, 0xb

    goto :goto_1

    .line 2580
    :cond_5
    :goto_2
    monitor-exit v8

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_3
    if-nez v4, :cond_9

    const-string v3, "ResipVolteHandler"

    .line 2584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallStateChange: unknown sessionId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-eq v7, v2, :cond_7

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v1

    const-wide/16 v3, 0x2c4

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    const-string v1, "ResipVolteHandler"

    const-string v2, "onCallStateChange: notifyCallStatus if 708"

    .line 2586
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    .line 2588
    new-instance v2, Lcom/sec/ims/util/SipError;

    const/16 v3, 0x2c4

    invoke-direct {v2, v3}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 2589
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_8
    return-void

    .line 2594
    :cond_9
    sget-object v5, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v7, v5, :cond_c

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v5

    if-eq v5, v12, :cond_a

    .line 2595
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_c

    :cond_a
    if-eq v3, v11, :cond_b

    const/16 v5, 0xb

    if-eq v3, v5, :cond_b

    const/16 v5, 0xe

    if-eq v3, v5, :cond_b

    const/16 v5, 0x12

    if-ne v3, v5, :cond_c

    .line 2600
    :cond_b
    iput-boolean v14, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 2603
    :cond_c
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v5

    const/16 v7, 0xc

    if-ne v5, v7, :cond_11

    if-ne v3, v11, :cond_e

    .line 2605
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->isIncomingCall()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "ResipVolteHandler"

    const-string v7, "USSD indicated from network"

    .line 2606
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v0, v4, v5, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    goto :goto_4

    .line 2609
    :cond_d
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v0, v4, v5, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    goto :goto_4

    :cond_e
    const/16 v5, 0xb

    if-ne v3, v5, :cond_f

    .line 2612
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v0, v4, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    .line 2613
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->removeCall(I)V

    return-void

    :cond_f
    const/16 v5, 0x11

    if-ne v3, v5, :cond_10

    .line 2616
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v0, v4, v5, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    goto :goto_4

    :cond_10
    const/16 v5, 0x13

    if-ne v3, v5, :cond_11

    .line 2618
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v0, v4, v5, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    :cond_11
    :goto_4
    const-string v5, "ResipVolteHandler"

    .line 2623
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "audioCodec="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2624
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioCodecName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " remoteMmtelCapa="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2625
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteMmtelCapa()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " remoteVideoCapa="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " isFocus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2623
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioCodecName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2630
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v6

    if-eqz v6, :cond_12

    move v6, v14

    goto :goto_5

    :cond_12
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x30000000

    .line 2628
    invoke-static {v6, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 2632
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 2633
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioCodecName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ResipVolteHandler"

    .line 2634
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallStateChange: audioCodec "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    iget-object v7, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getCallState()I

    move-result v7

    .line 2636
    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setCallState(I)V

    const-string v8, "ResipVolteHandler"

    .line 2637
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCallStateChange: oldState=  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", newState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->sipCallId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 2639
    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->sipCallId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipCallId(Ljava/lang/String;)V

    .line 2641
    :cond_13
    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->touchScreenEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setTouchScreenEnabled(Z)V

    .line 2643
    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v8, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setisHDIcon(I)V

    .line 2646
    sget-object v8, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v5, v8, :cond_14

    sget-object v8, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v5, v8, :cond_15

    :cond_14
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteMmtelCapa()Z

    move-result v8

    if-nez v8, :cond_15

    const-string v8, "ResipVolteHandler"

    const-string v9, "disable HD icon by remote doesn\'t have MMTEL capability"

    .line 2647
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setisHDIcon(I)V

    .line 2651
    :cond_15
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 2652
    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v8, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    const/4 v8, 0x4

    if-ne v3, v8, :cond_17

    .line 2654
    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v8

    if-eqz v8, :cond_17

    const-string v8, "ResipVolteHandler"

    const-string v9, "KOR model need to update audio codec as NULL"

    .line 2655
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v8, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    :cond_17
    :goto_6
    const/4 v6, 0x3

    if-ne v3, v6, :cond_18

    .line 2661
    invoke-direct {v0, v4, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyIncomingCall(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    const-string v0, "ResipVolteHandler"

    const-string v1, "onCallStateChange: Incoming call event"

    .line 2662
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const/16 v6, 0xa

    if-ne v3, v6, :cond_19

    .line 2667
    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v6, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIndicationFlag(I)V

    .line 2670
    :cond_19
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v8

    long-to-int v6, v8

    invoke-direct {v0, v3, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToVolteState(II)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v6

    if-nez v6, :cond_1a

    const-string v0, "ResipVolteHandler"

    .line 2672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChange: unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2676
    :cond_1a
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v8

    .line 2677
    :try_start_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v9

    iput v9, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2678
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2680
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->EXTEND_TO_CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v6, v8, :cond_1b

    const-string v8, "ResipVolteHandler"

    .line 2681
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extend to conference event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v8, -0x1

    .line 2684
    invoke-direct {v0, v4, v6, v1, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyCallStatus(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;I)V

    .line 2686
    invoke-direct {v0, v5, v4, v1, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->isSendingCmosInfoNeeded(Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;I)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2687
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "com.samsung.telephony.extra.ims.VCS_ACTION"

    const-string v8, "ack:g.3gpp.cmos"

    .line 2688
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->sendVcsInfo(ILandroid/os/Bundle;)I

    :cond_1c
    const/16 v6, 0xb

    if-ne v3, v6, :cond_21

    .line 2695
    iget-boolean v3, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v6

    long-to-int v3, v6

    const/16 v6, 0x320

    if-eq v3, v6, :cond_1d

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v6

    long-to-int v3, v6

    const/16 v6, 0x25e

    if-ne v3, v6, :cond_1e

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    const-string v0, "ResipVolteHandler"

    const-string v1, "conference call error received; don\'t remove session yet."

    .line 2696
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2697
    :cond_1e
    iget-boolean v3, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v3, :cond_1f

    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v5, v3, :cond_1f

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v5

    long-to-int v3, v5

    if-nez v3, :cond_1f

    const-string v1, "ResipVolteHandler"

    const-string v2, "conference call is ended; clear all call List"

    .line 2698
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2700
    :try_start_2
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2701
    monitor-exit v3

    goto :goto_7

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2702
    :cond_1f
    iget-boolean v3, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v3, :cond_20

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0x1e6

    if-eq v3, v4, :cond_21

    :cond_20
    const-string v3, "LTE Retry in UAC Barred"

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 2703
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->removeCall(I)V

    :cond_21
    :goto_7
    return-void

    :catchall_2
    move-exception v0

    .line 2678
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private onCdpnInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 0

    .line 3206
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 3207
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onCmcInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 5

    .line 3224
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 3231
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3232
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3233
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 3236
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3237
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v0

    .line 3239
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->handle()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    move-object v1, v0

    :goto_1
    const-string v2, "ResipVolteHandler"

    if-nez p1, :cond_3

    const-string p0, "ignore CmcInfo event UA is null"

    .line 3243
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3246
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-nez v3, :cond_4

    const-string p0, "ignore CmcInfo event without registration"

    .line 3249
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3253
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCmcInfoReceived: has AdditionalContents of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3254
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3253
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "application/cmc-info+xml"

    .line 3256
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "onCmcInfoReceived: contentType mismatch!"

    .line 3257
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3262
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 3263
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$CmcInfoXmlParser;->parseXml(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;

    move-result-object p1

    .line 3264
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p0

    const-string p1, "failed to parse cmc info xml!"

    .line 3269
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private onConferenceUpdate(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 9

    .line 3022
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;

    const-string v0, "ResipVolteHandler"

    .line 3024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceUpdate: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->session()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->event()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3024
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->session()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3029
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-eqz v2, :cond_0

    .line 3030
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 3033
    :goto_0
    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_4

    .line 3034
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v2

    move v3, v1

    .line 3035
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3036
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 3037
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    if-eqz v4, :cond_1

    const-string v5, "ResipVolteHandler"

    .line 3039
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tempCall.mCallType :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v4, :cond_2

    .line 3041
    iget v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    const-string v0, "ResipVolteHandler"

    const-string v3, "Find confcall!!"

    .line 3042
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3047
    :cond_3
    :goto_2
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    if-nez v0, :cond_5

    const-string p0, "ResipVolteHandler"

    const-string p1, "onConferenceUpdate: session not found."

    .line 3051
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3055
    :cond_5
    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    .line 3056
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->event()I

    move-result v3

    .line 3058
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    .line 3059
    iget v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCallType(I)V

    .line 3060
    invoke-virtual {v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 3061
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 3062
    iget-boolean v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    invoke-virtual {v4, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setConference(Z)V

    const/4 v0, 0x2

    if-nez v3, :cond_8

    .line 3066
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_ADDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 3068
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3069
    :goto_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 3070
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3072
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    const-string v3, "ResipVolteHandler"

    .line 3073
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConferenceUpdate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " added.  partid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3074
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3073
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getParticipantStatus(I)I

    move-result v3

    .line 3076
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->sessionId()J

    move-result-wide v5

    long-to-int v5, v5

    .line 3077
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v7

    long-to-int v1, v7

    invoke-virtual {v4, v6, v1, v5, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    if-ne v3, v0, :cond_7

    const-string v1, "ResipVolteHandler"

    .line 3081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") join to conference"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_ADDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 3084
    invoke-virtual {v1, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 3085
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    if-ne v3, v2, :cond_a

    .line 3089
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_REMOVED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 3091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3092
    :goto_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 3093
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3095
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    const-string v1, "ResipVolteHandler"

    .line 3096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConferenceUpdate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " removed."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v5

    long-to-int v3, v5

    .line 3098
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->sessionId()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getParticipantStatus(I)I

    move-result v0

    .line 3097
    invoke-virtual {v4, v1, v3, v5, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    goto :goto_7

    :cond_a
    if-ne v3, v0, :cond_d

    const-string v0, "ResipVolteHandler"

    const-string v2, "onConferenceUpdate: CONF_PARTICIPANT_UPDATED"

    .line 3101
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_PARTICIPANTS_UPDATED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 3104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3105
    :goto_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 3106
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3108
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    .line 3109
    new-instance v1, Lcom/sec/ims/util/NameAddr;

    const-string v3, ""

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    invoke-virtual {v4, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setPeerAddr(Lcom/sec/ims/util/NameAddr;)V

    .line 3110
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v5

    long-to-int v3, v5

    .line 3111
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->sessionId()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getParticipantStatus(I)I

    move-result v6

    .line 3110
    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    const-string v1, "ResipVolteHandler"

    .line 3112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConferenceUpdate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " update id . "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3113
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3112
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3119
    :cond_c
    invoke-virtual {v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 3120
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    :cond_d
    const-string p0, "ResipVolteHandler"

    const-string p1, "onConferenceUpdate: unknown event. ignore."

    .line 3116
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onCurrentLocationDiscoveryDuringEmergencyCall(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 4

    .line 3275
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CurrentLocationDiscoveryDuringEmergencyCall;

    const-string v0, "ResipVolteHandler"

    if-nez p1, :cond_0

    const-string p0, "onCurrentLocationDiscoveryDuringEmergencyCall() result is null"

    .line 3277
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3282
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CurrentLocationDiscoveryDuringEmergencyCall;->sessionId()I

    move-result v1

    .line 3283
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CurrentLocationDiscoveryDuringEmergencyCall;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3284
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CurrentLocationDiscoveryDuringEmergencyCall;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.3gpp.current-location-discovery+xml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3285
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CurrentLocationDiscoveryDuringEmergencyCall;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3287
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;->getInstance()Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CurrentLocationDiscoveryDuringEmergencyCall;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;->-$$Nest$mparseInfoXml(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "onCurrentLocationDiscoveryDuringEmergencyCall: error parsing INFO xml"

    .line 3289
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-string p1, "none"

    :goto_0
    const-string/jumbo v2, "oneShot"

    .line 3294
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCurrentLocationDiscoveryDuringEmergencyCall() session: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCurrentLocationDiscoveryDuringEmergencyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private onDedicatedBearerEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 5

    const-string v0, "ResipVolteHandler"

    const-string v1, "onDedicatedBearerEventReceived:"

    .line 2935
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;

    .line 2938
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;

    .line 2939
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;->bearerState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertDedicatedBearerState(I)I

    move-result v1

    .line 2940
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;->qci()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;->session()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;-><init>(III)V

    .line 2941
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onDialogEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 6

    .line 3146
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 3152
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3153
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3154
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 3157
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3158
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v0

    .line 3161
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;->handle()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    move-object v1, v0

    :goto_1
    const-string v2, "ResipVolteHandler"

    if-nez p1, :cond_3

    const-string p0, "ignore dialog event UA is null"

    .line 3165
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3169
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-nez v3, :cond_4

    const-string p0, "ignore dialog event without registration"

    .line 3172
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3176
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDialogEventReceived: has AdditionalContents of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3176
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "application/dialog-info+xml"

    .line 3179
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "onDialogEventReceived: contentType mismatch!"

    .line 3180
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3186
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    .line 3187
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_7

    .line 3188
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_6

    goto :goto_2

    .line 3192
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->getInstance()Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->parseDialogInfoXml(Ljava/lang/String;)Lcom/sec/ims/DialogEvent;

    move-result-object p1

    goto :goto_3

    .line 3189
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->getInstance()Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    move-result-object v0

    .line 3190
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    .line 3189
    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->parseDialogInfoXml(Ljava/lang/String;I)Lcom/sec/ims/DialogEvent;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3199
    :goto_3
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/DialogEvent;->setRegId(I)V

    .line 3200
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/DialogEvent;->setPhoneId(I)V

    .line 3202
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "failed to parse dialog xml!"

    .line 3195
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private onDtmfInfo(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 6

    .line 3211
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;

    .line 3212
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->event()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->volume()J

    move-result-wide v2

    long-to-int v2, v2

    .line 3213
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->duration()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->endbit()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;-><init>(IIII)V

    .line 3214
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onHoldResumeResponse(Lcom/sec/internal/helper/AsyncResult;Z)V
    .locals 3

    .line 2452
    iget-object p0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2454
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->session()I

    move-result p1

    .line 2455
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v0

    .line 2456
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result p0

    .line 2458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHoldResumeResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "hold"

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "resume"

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " session="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " success="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipVolteHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onInfoResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 4

    .line 2484
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;-><init>()V

    .line 2485
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 2486
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v1

    if-nez v1, :cond_0

    .line 2489
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    goto :goto_0

    .line 2491
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    .line 2494
    :goto_0
    new-instance v1, Lcom/sec/ims/util/SipError;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->sipError()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->errorStr()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 2495
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onMakeCallResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 8

    const-string v0, "onMakeCallResponse:"

    const-string v1, "ResipVolteHandler"

    .line 2421
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2425
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->session()I

    move-result v2

    .line 2426
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v3

    .line 2427
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v4

    .line 2429
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    .line 2431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMakeCallResponse: nameAddr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2432
    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " success="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2431
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    iput v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    .line 2437
    iput-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2439
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->sipCallId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2440
    iget-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->sipCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipCallId(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne v3, v0, :cond_1

    .line 2443
    iget-object p0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->stopCamera()V

    goto :goto_0

    .line 2445
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->addCall(ILcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)V

    .line 2448
    :goto_0
    iget-object p0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private onModifyCall(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 9

    .line 2709
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;

    .line 2710
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->session()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2711
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->oldType()J

    move-result-wide v1

    long-to-int v1, v1

    .line 2712
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->newType()J

    move-result-wide v2

    long-to-int v2, v2

    .line 2713
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->isSdToSdPull()Z

    move-result v3

    .line 2715
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v4

    const-string v5, "ResipVolteHandler"

    if-nez v4, :cond_0

    .line 2717
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onModifyCall: unknown sessionId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2721
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->idcExtra()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v0, "[IDC][FW]ResipVolteHandler"

    const-string v1, "onModifyCall() Transaction Handling"

    .line 2722
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onModifyIdcSession(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;)V

    return-void

    .line 2727
    :cond_1
    iget-object p1, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 2729
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onModifyCall() session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", oldCallType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", newCallType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isSdToSdPull: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    invoke-static {v1, v2}, Lcom/sec/internal/helper/ImsCallUtil;->isUpgradeCall(II)Z

    move-result v6

    const/16 v7, 0x25b

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 2733
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v8

    aget v6, v6, v8

    sget v8, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    if-eq v6, v8, :cond_2

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 2735
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v8

    aget v6, v6, v8

    sget v8, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne v6, v8, :cond_3

    :cond_2
    const/16 v6, 0x9

    .line 2737
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCall(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2740
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rejecting modify request since TTY call("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    iget-object v2, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") exists"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    invoke-virtual {p0, v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->rejectModifyCallType(II)I

    return-void

    .line 2746
    :cond_4
    sget-object v6, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v6, :cond_5

    const/4 v6, 0x1

    if-ne v1, v6, :cond_5

    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    const-string p1, "onModifyCall: ATT - RX upgrade to videoshare with recvonly -> automatically reject with audio only 200 OK"

    .line 2748
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->replyModifyCallType(IIII)I

    return-void

    .line 2757
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_6

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isOneWayVideoCall(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "onModifyCall: RJIL - network does not support 1-way videoreject with 603"

    .line 2758
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    invoke-virtual {p0, v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->rejectModifyCallType(II)I

    return-void

    .line 2767
    :cond_6
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result p1

    iput p1, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2769
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    .line 2770
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->MODIFY_REQUESTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 2771
    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCallType(I)V

    .line 2772
    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 2773
    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setIsSdToSdPull(Z)V

    .line 2774
    iget-object v0, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 2775
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onModifyIdcSession(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;)V
    .locals 3

    const-string v0, "[IDC][FW]ResipVolteHandler"

    const-string v1, "onModifyIdcSession()"

    .line 2779
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->session()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2781
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->idcExtra()Ljava/lang/String;

    move-result-object p1

    .line 2783
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    .line 2784
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->MODIFY_REQUESTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 2785
    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 2786
    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setIdcExtra(Ljava/lang/String;)V

    .line 2787
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onNewIncomingCall(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2791
    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;

    .line 2793
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->handle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    const-string v3, "ResipVolteHandler"

    if-nez v2, :cond_0

    const-string v0, "onNewIncomingCall: UserAgent not found."

    .line 2796
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v4, "acquire wakelock for MT call by 1 sec"

    .line 2800
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "ImsService"

    .line 2802
    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    .line 2803
    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2805
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->peeruri()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2806
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->peeruri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 2809
    :goto_0
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    new-instance v6, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->displayName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    invoke-direct {v5, v2, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V

    .line 2810
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->session()J

    move-result-wide v6

    long-to-int v4, v6

    iput v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    .line 2811
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->callType()I

    move-result v4

    iput v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2813
    iget-object v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 2815
    sget-object v6, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v4, v6, :cond_2

    iget-object v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->isOutOfService(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2816
    iget-object v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v4

    const-string v6, "Delete TCP socket when out of service"

    invoke-static {v3, v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2817
    iget-object v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->setOutOfService(ZI)V

    .line 2818
    iget-object v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 2821
    :cond_2
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    .line 2822
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAsIncomingCall()V

    .line 2824
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->referredBy()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2825
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->referredBy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setReferredBy(Ljava/lang/String;)V

    .line 2827
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->sipCallId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2828
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->sipCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipCallId(Ljava/lang/String;)V

    .line 2830
    :cond_4
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->rawSipmsg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 2831
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->rawSipmsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipInviteMsg(Ljava/lang/String;)V

    .line 2833
    :cond_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->terminatingId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 2834
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->terminatingId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setTerminatingId(Lcom/sec/ims/util/ImsUri;)V

    .line 2836
    :cond_6
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->numberPlus()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2837
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->numberPlus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setNumberPlus(Ljava/lang/String;)V

    .line 2839
    :cond_7
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->replaces()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 2840
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->replaces()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setReplaces(Ljava/lang/String;)V

    .line 2842
    :cond_8
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->photoRing()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 2843
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->photoRing()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setPhotoRing(Ljava/lang/String;)V

    .line 2845
    :cond_9
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->alertInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 2846
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->alertInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAlertInfo(Ljava/lang/String;)V

    .line 2848
    :cond_a
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->historyInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 2849
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->historyInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setHistoryInfo(Ljava/lang/String;)V

    .line 2852
    :cond_b
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->verstat()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 2853
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->verstat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVerstat(Ljava/lang/String;)V

    .line 2856
    :cond_c
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->organization()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 2857
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->organization()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setOrganization(Ljava/lang/String;)V

    .line 2860
    :cond_d
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->cmcDeviceId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 2861
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->cmcDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setCmcDeviceId(Ljava/lang/String;)V

    .line 2864
    :cond_e
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->composerData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;

    move-result-object v6

    if-eqz v6, :cond_15

    const-string v6, "onNewIncomingCall: has composer data"

    .line 2865
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->composerData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;

    move-result-object v6

    .line 2867
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2869
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->subject()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string/jumbo v8, "subject"

    .line 2870
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->subject()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    :cond_f
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->image()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "image"

    .line 2874
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->image()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    :cond_10
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->callReason()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string v8, "call_reason"

    .line 2878
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->callReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    :cond_11
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->latitude()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "latitude"

    .line 2882
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->latitude()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2885
    :cond_12
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->longitude()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "longitude"

    .line 2886
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->longitude()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    :cond_13
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->radius()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string/jumbo v8, "radius"

    .line 2890
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->radius()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const-string v8, "importance"

    .line 2893
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->importance()Z

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2894
    invoke-virtual {v4, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setComposerData(Landroid/os/Bundle;)V

    .line 2898
    :cond_15
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->idcExtra()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_16

    .line 2899
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->idcExtra()Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    goto :goto_1

    :cond_16
    move-object v15, v7

    .line 2902
    :goto_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->hasDiversion()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setHasDiversion(Z)V

    .line 2903
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->cmcEdCallSlot()J

    move-result-wide v8

    long-to-int v1, v8

    invoke-virtual {v4, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setCmcEdCallSlot(I)V

    .line 2904
    iput-object v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 2906
    iget v1, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->addCall(ILcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)V

    .line 2907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIncomingCall: sessionId "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " peer "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2908
    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2907
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v9

    iget v10, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    iget v2, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2911
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v11

    iget-object v12, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    const/4 v13, 0x1

    const/4 v14, 0x0

    iget-object v2, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object v8, v1

    move-object/from16 v16, v2

    invoke-direct/range {v8 .. v16}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;-><init>(Lcom/sec/ims/ImsRegistration;IILcom/sec/ims/util/NameAddr;ZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 2914
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyIncomingCall() pre Alerting session: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onQuantumSecurityStatusEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 8

    .line 2969
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;

    .line 2970
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->event()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2971
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mQuantumSecurityStatusEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;

    .line 2972
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->session()J

    move-result-wide v5

    long-to-int v5, v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;->FALLBACK_TO_NORMAL_CALL:Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    .line 2973
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->qtSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;-><init>(ILcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;Ljava/lang/String;)V

    .line 2971
    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 2974
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->event()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2975
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mQuantumSecurityStatusEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;

    .line 2976
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->session()J

    move-result-wide v5

    long-to-int v5, v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    .line 2977
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->qtSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;-><init>(ILcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;Ljava/lang/String;)V

    .line 2975
    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 2978
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->event()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2979
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mQuantumSecurityStatusEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;

    .line 2980
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->session()J

    move-result-wide v5

    long-to-int v5, v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;->NOTIFY_SESSION_ID:Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    .line 2981
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->qtSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;-><init>(ILcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;Ljava/lang/String;)V

    .line 2979
    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 2983
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported event: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->event()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ResipVolteHandler"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v4, "user"

    .line 2985
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2987
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->event()I

    move-result v0

    if-ne v0, v2, :cond_3

    const-string p1, "Encryption SUCCESS noti received!!!"

    goto :goto_1

    .line 2989
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->event()I

    move-result v0

    if-ne v0, v3, :cond_4

    const-string p1, "Fallback to NORMAL CALL noti received!!!"

    goto :goto_1

    .line 2991
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;->event()I

    move-result p1

    if-ne p1, v1, :cond_5

    const-string p1, "NOTIFY_SESSION_ID CALL noti received!!!"

    goto :goto_1

    :cond_5
    const-string p1, "Unknown noti received!!!"

    .line 2996
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_6
    return-void
.end method

.method private onReferReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 3

    .line 3124
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;

    .line 3127
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3129
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReferReceived: unknown handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;->handle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipVolteHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3133
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;->session()J

    move-result-wide v0

    long-to-int p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->acceptCallTranfer(IZILjava/lang/String;)V

    return-void
.end method

.method private onReferStatus(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 4

    .line 3137
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;

    .line 3139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReferStatus: session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3140
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->session()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " respCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->statusCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    .line 3139
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->session()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->statusCode()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onRrcConnectionEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string v1, "onRrcConnectionEventReceived:"

    .line 2955
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;

    .line 2959
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;->event()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2960
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->REJECTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    invoke-direct {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 2962
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;->event()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2963
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    invoke-direct {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onRtpLossRateNoti(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 6

    const-string v0, "ResipVolteHandler"

    const-string v1, "onRtpLossRateNoti:"

    .line 2946
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;

    .line 2949
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->interval()J

    move-result-wide v1

    long-to-int v1, v1

    .line 2950
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->lossrate()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->jitter()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->notification()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;-><init>(IFFI)V

    .line 2951
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onTextInfo(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 4

    .line 3218
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;

    .line 3219
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->len()J

    move-result-wide v2

    long-to-int p1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;-><init>(ILjava/lang/String;I)V

    .line 3220
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onUpdateAudioInterfaceResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 1

    const-string p0, "ResipVolteHandler"

    const-string/jumbo v0, "onUpdateAudioInterfaceResponse:"

    .line 2500
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    iget-object p0, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 2503
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private removeCall(I)V
    .locals 4

    .line 3435
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "ResipVolteHandler"

    .line 3436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove Call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3438
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sendSIPMSGInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 2

    .line 3609
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    .line 3610
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->sipMessage()Ljava/lang/String;

    move-result-object v0

    .line 3611
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3614
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3617
    :goto_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;

    invoke-direct {v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;-><init>(Ljava/lang/String;Z)V

    .line 3618
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 1151
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v2

    move/from16 v3, p5

    .line 1152
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v4

    if-eqz v2, :cond_3

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 1158
    :cond_0
    new-instance v14, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    invoke-static/range {p2 .. p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v4, ""

    move-object/from16 v5, p1

    invoke-direct {v14, v5, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    move/from16 v2, p6

    .line 1159
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v4

    .line 1160
    iput v4, v14, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    const/4 v2, 0x1

    .line 1161
    iput-boolean v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 1162
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    .line 1164
    iput-object v6, v14, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 1165
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v13, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1166
    iput-object v13, v14, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x3

    .line 1170
    invoke-virtual {v0, v2, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p3

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    move-object v15, v13

    move-object/from16 v13, p14

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .line 1168
    invoke-virtual/range {v0 .. v14}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mergeCall(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V

    .line 1172
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-virtual {v15, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ResipVolteHandler"

    if-nez v0, :cond_1

    :try_start_1
    const-string/jumbo v0, "startNWayConferenceCall: timeout."

    .line 1173
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    return v0

    :cond_1
    move-object/from16 v0, v17

    .line 1180
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v2, :cond_2

    .line 1181
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNWayConferenceCall: call failed. reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 1184
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1182
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    .line 1188
    :cond_2
    iget v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0

    :cond_3
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1198
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    invoke-static/range {p2 .. p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v3, ""

    move-object/from16 v4, p1

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    move/from16 v2, p5

    .line 1199
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v7

    .line 1200
    iput v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    const/4 v2, 0x1

    .line 1201
    iput-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 1202
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    .line 1204
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 1205
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1206
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 1207
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v5, p4

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    const/4 v2, 0x3

    .line 1210
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v6, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p3

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    .line 1208
    invoke-virtual/range {v4 .. v16}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->conference([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    const/4 v0, -0x1

    .line 1212
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ResipVolteHandler"

    if-nez v2, :cond_0

    :try_start_1
    const-string/jumbo v1, "startNWayConferenceCall: timeout."

    .line 1213
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 1220
    :cond_0
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v2, :cond_1

    .line 1221
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNWayConferenceCall: call failed. reason "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 1224
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1222
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1228
    :cond_1
    iget v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    :catch_0
    return v0
.end method


# virtual methods
.method public addParticipantToNWayConferenceCall(II)I
    .locals 2

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addParticipantToNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") participantId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "No conference session to add a participant"

    .line 1238
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1242
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    return v1
.end method

.method public addParticipantToNWayConferenceCall(ILjava/lang/String;)I
    .locals 2

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addParticipantToNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") participant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string p0, "No conference session to add a participant"

    .line 1268
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1272
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    return v1
.end method

.method public addUserForConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;Z)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserForConferenceCall: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " create "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ResipVolteHandler"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v2

    const/4 v5, -0x1

    if-nez v2, :cond_0

    const-string v0, "addUserForConferenceCall: session not found."

    .line 1423
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 1427
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1428
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move-object v11, v4

    .line 1430
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->checkConfererenceCallData(Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I

    move-result v4

    if-ne v4, v5, :cond_2

    return v5

    .line 1433
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSupportPrematureEnd()Z

    move-result v16

    .line 1434
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getCallType()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v7

    .line 1435
    iget-object v4, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1437
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object v6

    .line 1438
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object v12

    .line 1439
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object v15

    move/from16 v10, p1

    .line 1436
    invoke-virtual/range {v4 .. v16}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->extendToConfCall([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public answerCallWithCallType(II)I
    .locals 2

    .line 1009
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result p2

    const-string v0, "0"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->answerCall(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public answerCallWithCallType(IILjava/lang/String;)I
    .locals 1

    .line 1014
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->answerCall(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public answerCallWithCallType(IILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1019
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->answerCall(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cancelTransferCall(I)I
    .locals 2

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTransferCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "cancelTransferCall: session not found."

    .line 1464
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1468
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->cancelTransferCall(ILandroid/os/Message;)V

    const/4 p0, 0x0

    return p0
.end method

.method public clearAllCallInternal(I)V
    .locals 0

    .line 1878
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->clearAllCallInternal(I)V

    return-void
.end method

.method public deleteTcpSocket(II)I
    .locals 2

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteTcpSocket: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "DeleteTcpSocket: session not found."

    .line 930
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 934
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    const/4 p0, 0x0

    return p0
.end method

.method public enableQuantumSecurityService(IZ)I
    .locals 0

    .line 1794
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ResipVolteHandler"

    const-string p1, "enableQuantumSecurityService: session not found."

    .line 1796
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1799
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->enableQuantumSecurityService(IZ)V

    const/4 p0, 0x0

    return p0
.end method

.method public endCall(IILcom/sec/internal/constants/ims/SipReason;)I
    .locals 6

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reason "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "endCall: session not found."

    .line 945
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 948
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    if-eqz p3, :cond_b

    .line 950
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCall: reason : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result p2

    const-string v1, "deleteTcpClientSocket() at INVITE FLUSH"

    const-string v2, "INVITE FLUSH"

    const-string v3, "RRC CONNECTION REJECT"

    const-string v4, "deleteTcpClientSocket()"

    if-eqz p2, :cond_4

    .line 952
    sget-object p2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_2

    const-string p2, "PS BARRING"

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 953
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 954
    :cond_1
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 957
    :cond_2
    sget-object p2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p1, p2, :cond_3

    sget-object p2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_b

    :cond_3
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 958
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto/16 :goto_2

    .line 961
    :cond_4
    sget-object p2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_5

    const-string p1, "SRVCC"

    .line 962
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 963
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto/16 :goto_2

    .line 966
    :cond_5
    sget-object p2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_6

    .line 967
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 968
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto :goto_2

    .line 971
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_7

    goto :goto_1

    .line 976
    :cond_7
    sget-object p2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p1, p2, :cond_9

    sget-object p2, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_8

    goto :goto_0

    .line 981
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 982
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 983
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto :goto_2

    :cond_9
    :goto_0
    const-string p1, "SESSIONPROGRESS TIMEOUT"

    .line 977
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 978
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto :goto_2

    :cond_a
    :goto_1
    const-string p1, "SIP response time-out"

    .line 972
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 973
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 988
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->endCall(ILcom/sec/internal/constants/ims/SipReason;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected getEmergencyUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1

    .line 1937
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/16 v0, 0xf

    .line 1938
    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method protected getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 1942
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 1943
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method protected getUa(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 3

    .line 1911
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 1914
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    .line 1915
    array-length p1, p0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 1919
    :cond_0
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v1, p0, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 1924
    :cond_1
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-ne v2, p3, :cond_2

    .line 1925
    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method protected getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 1932
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 1933
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method public handleCmcCsfb(I)I
    .locals 2

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCmcCsfb(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "handleCmcCsfb(): session not found."

    .line 1846
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1849
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->handleCmcCsfb(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public handleDtmf(IIIILandroid/os/Message;)I
    .locals 6

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmf: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    .line 1063
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "sendDtmf: session not found."

    .line 1068
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->handleDtmf(IIIILandroid/os/Message;)V

    const/4 p0, 0x0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 3509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 3601
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onCurrentLocationDiscoveryDuringEmergencyCall(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3553
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onQuantumSecurityStatusEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3597
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onCmcInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3593
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->sendSIPMSGInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto/16 :goto_0

    .line 3565
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onTextInfo(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3561
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onDtmfInfo(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3549
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onRrcConnectionEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3545
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onDedicatedBearerEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3589
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onRtpLossRateNoti(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3557
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onCdpnInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3533
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onModifyCall(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3581
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onDialogEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3577
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onReferStatus(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3573
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onReferReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3569
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onConferenceUpdate(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3541
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onNewIncomingCall(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3529
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onCallStateChange(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3585
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onInfoResponse(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 3525
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onHoldResumeResponse(Lcom/sec/internal/helper/AsyncResult;Z)V

    goto :goto_0

    .line 3521
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onHoldResumeResponse(Lcom/sec/internal/helper/AsyncResult;Z)V

    goto :goto_0

    .line 3537
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 3514
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onMakeCallResponse(Lcom/sec/internal/helper/AsyncResult;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
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

.method public holdCall(I)I
    .locals 4

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "holdCall: session not found."

    .line 1082
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->dumpCall()V

    const/4 p0, -0x1

    return p0

    .line 1088
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIndicationFlag(I)V

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HoldCall,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x30000003

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1090
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->holdCall(ILandroid/os/Message;)V

    return v2
.end method

.method public init()V
    .locals 3

    .line 421
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/BaseHandler;->init()V

    .line 422
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x65

    const/4 v2, 0x0

    .line 424
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerNewIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCallStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6a

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerModifyCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x66

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerConferenceUpdateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x67

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerReferReceivedEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x68

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerReferStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x69

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6b

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6e

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerDedicatedBearerEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6f

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x74

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerQuantumSecurityStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6c

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x70

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x71

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x72

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x73

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCmcInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x75

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCurrentLocationDiscoveryDuringEmergencyCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 442
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 443
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    .line 444
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    .line 445
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    .line 446
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mOutOfService:[Z

    .line 447
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 451
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioInterfaceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceThread:Landroid/os/HandlerThread;

    .line 452
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 453
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    return-void
.end method

.method public makeCall(ILcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;Ljava/util/HashMap;I)I
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeCall: regId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " additionalSipHeaders="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "ResipVolteHandler"

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDestinationUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 813
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCallType()I

    move-result v6

    .line 815
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->isEmergency()Z

    move-result v7

    const/16 v8, 0xc

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v6, v8, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    move v8, v10

    :goto_0
    if-eqz v7, :cond_1

    if-gez v1, :cond_1

    const-string v1, "makeCall: using emergency UA."

    .line 821
    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getEmergencyUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    goto :goto_1

    .line 824
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    :goto_1
    const/16 v25, -0x1

    if-nez v1, :cond_2

    const-string v0, "makeCall: UserAgent not found."

    .line 828
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v25

    .line 832
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 833
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 836
    :goto_2
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v13, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 837
    new-instance v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDialingNumber()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v1, v4, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 838
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v6

    iput v6, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 839
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    .line 841
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/ims/settings/ImsProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v14

    .line 842
    iget-object v11, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 844
    sget-object v9, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v11, v9, :cond_4

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->isOutOfService(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "Delete TCP socket when out of service"

    .line 845
    invoke-static {v15, v3, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 846
    invoke-virtual {v0, v10, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->setOutOfService(ZI)V

    .line 847
    iget-object v9, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 851
    :cond_4
    sget-object v9, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v11, v9, :cond_5

    sget-object v9, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v11, v9, :cond_9

    :cond_5
    const-string v9, "EVS"

    invoke-virtual {v14, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 852
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthSend()Ljava/lang/String;

    move-result-object v9

    const-string v11, "fb"

    .line 853
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v9, "EVS-FB"

    .line 854
    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string/jumbo v11, "swb"

    .line 855
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v9, "EVS-SWB"

    .line 856
    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string/jumbo v11, "wb"

    .line 857
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v9, "EVS-WB"

    .line 858
    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string v11, "nb"

    .line 859
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "EVS-NB"

    .line 860
    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string v9, "AMR-WB"

    .line 862
    invoke-virtual {v14, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "AMRBE-WB"

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_3

    :cond_a
    const-string v9, "AMR-NB"

    .line 865
    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_4

    .line 863
    :cond_b
    :goto_3
    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    .line 867
    :cond_c
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCmcEdCallSlot()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setCmcEdCallSlot(I)V

    .line 869
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getSupportClir()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCli()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v26, v9

    goto :goto_5

    :cond_d
    const/16 v26, 0x0

    .line 870
    :goto_5
    iput-object v6, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 871
    iput-object v13, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 873
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeCall: Do device support 3gpp 24.390 USSI?"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getSupport3gppUssi()Z

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 873
    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_e

    .line 875
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getSupport3gppUssi()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_6

    :cond_e
    move v6, v10

    .line 877
    :goto_6
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    iget v9, v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getLetteringText()Ljava/lang/String;

    move-result-object v11

    .line 878
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDialingNumber()Ljava/lang/String;

    move-result-object v27

    if-eqz v6, :cond_f

    .line 879
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->createUssdContents(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v6

    move-object/from16 v28, v6

    goto :goto_7

    :cond_f
    const/16 v28, 0x0

    .line 880
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getPEmergencyInfo()Ljava/lang/String;

    move-result-object v14

    .line 881
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getAlertInfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getLteEpsOnlyAttached()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getP2p()Ljava/util/List;

    move-result-object v18

    .line 882
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCmcBoundSessionId()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getComposerData()Landroid/os/Bundle;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getReplaceCallId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCmcEdCallSlot()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getIdcExtra()Ljava/lang/String;

    move-result-object v23

    const/4 v6, 0x1

    .line 883
    invoke-virtual {v0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    move-object v6, v1

    move-object v0, v7

    move-object v7, v4

    move-object v8, v12

    move-object v10, v11

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object v4, v13

    move-object/from16 v13, v26

    move-object v5, v15

    move-object/from16 v15, p3

    .line 877
    invoke-virtual/range {v6 .. v24}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->makeCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 886
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x7530

    invoke-virtual {v4, v7, v8, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v0, "makeCall: timeout."

    .line 887
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v25

    .line 894
    :cond_10
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v4, :cond_11

    .line 895
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v4

    if-eqz v4, :cond_11

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeCall: call failed. reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setCallSetupError(I)V

    return v25

    .line 900
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MakeCall,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x30000001

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 902
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-lez v2, :cond_12

    .line 903
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v1

    .line 904
    invoke-static {v1}, Lcom/sec/internal/log/CmcPingTestLogger;->ping(Ljava/util/List;)V

    .line 906
    :cond_12
    iget v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return v0

    :catch_0
    return v25
.end method

.method public modifyCallType(III)I
    .locals 2

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "modifyCallType(): session not found."

    .line 1298
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1302
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ModifyCall,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000005

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1304
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->modifyCallType(III)V

    const/4 p0, 0x0

    return p0
.end method

.method public proceedIncomingCall(IZLjava/util/HashMap;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proceedIncomingCall: sessoinId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "proceedIncomingCall: session not found."

    .line 998
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IncomingCall,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000002

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1003
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->progressIncomingCall(IZLjava/util/HashMap;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 9

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "publishDialog: regId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    const/4 p0, -0x1

    if-nez v2, :cond_0

    const-string/jumbo p1, "publishDialog: UserAgent not found."

    .line 1537
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1540
    :cond_0
    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "publishUri Uri is wrong"

    .line 1543
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1547
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->publishDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/Dialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v4, p5

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pullingCall: regId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " taruri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " msisdn "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " targetDialog "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1477
    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ResipVolteHandler"

    .line 1475
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    const/4 v8, -0x1

    if-nez v1, :cond_0

    const-string/jumbo v0, "pullingCall: UserAgent not found."

    .line 1481
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 1484
    :cond_0
    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "Pulling Uri is wrong"

    .line 1487
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 1490
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    .line 1491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "targetDialog.getCallType()= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mno="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1491
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "VZW"

    .line 1494
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1495
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1496
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x2

    .line 1497
    invoke-virtual {v4, v3}, Lcom/sec/ims/Dialog;->setCallType(I)V

    .line 1498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recover call type= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_2
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1502
    new-instance v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-object v3, p3

    invoke-direct {v10, v1, v2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 1503
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v3

    iput v3, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 1504
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    const-string v5, "AMR-WB"

    .line 1505
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    .line 1506
    iput-object v3, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 1507
    iput-object v9, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 1509
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    .line 1510
    invoke-virtual {p0, v5, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v1

    move-object v1, v3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 1509
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->pullingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;Landroid/os/Message;)V

    .line 1513
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-virtual {v9, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "pullingCall: timeout."

    .line 1514
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    .line 1521
    :cond_3
    iget-object v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v0, :cond_4

    .line 1522
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pullingCall: call failed. reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 1527
    :cond_4
    iget v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return v0

    :catch_0
    return v8
.end method

.method public registerForAudioPathUpdated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForAudioPathUpdated:"

    .line 632
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioPathUpdatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForCallStateEvent:"

    .line 458
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForCdpnInfoEvent:"

    .line 542
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForCmcInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForCmcInfoEvent:"

    .line 530
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForCurrentLocationDiscoveryDuringEmergencyCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForCurrentLocationDiscoveryDuringEmergencyCallEvent:"

    .line 494
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCurrentLocationDiscoveryDuringEmergencyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForDedicatedBearerNotifyEvent:"

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForDialogEvent:"

    .line 518
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForDtmfEvent:"

    .line 584
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForCallStateEvent:"

    .line 470
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForReferStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForReferStatus:"

    .line 506
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForRrcConnectionEvent:"

    .line 560
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForRtpLossRateNoti:"

    .line 620
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForSIPMSGEvent:"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForTextEvent:"

    .line 596
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForUssdEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForUssdEvent:"

    .line 482
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerQuantumSecurityStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerQuantumSecurityStatusEvent:"

    .line 572
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mQuantumSecurityStatusEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public rejectCall(IILcom/sec/ims/util/SipError;)I
    .locals 2

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rejectCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " error "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "rejectCall: session not found."

    .line 916
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 920
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->rejectCall(ILcom/sec/ims/util/SipError;)V

    const/4 p0, 0x0

    return p0
.end method

.method public rejectModifyCallType(II)I
    .locals 2

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rejectModifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "rejectModifyCallType(): session not found."

    .line 1353
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1357
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RejectModifyCall,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000007

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1359
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->rejectModifyCallType(II)V

    const/4 p0, 0x0

    return p0
.end method

.method public removeParticipantFromNWayConferenceCall(II)I
    .locals 2

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeParticipantFromNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") removeSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "No conference session to add a participant"

    .line 1253
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1257
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public removeParticipantFromNWayConferenceCall(ILjava/lang/String;)I
    .locals 2

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeParticipantFromNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") participant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string p0, "No conference session to add a participant"

    .line 1283
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1287
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public replaceSipCallId(ILjava/lang/String;)V
    .locals 2

    .line 1855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replaceSipCallId(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "replaceSipCallId(): session not found."

    .line 1858
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1861
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {p0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipCallId(Ljava/lang/String;)V

    return-void
.end method

.method public replaceUserAgent(II)V
    .locals 2

    .line 1866
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1867
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    const-string v1, "ResipVolteHandler"

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1872
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1873
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "session("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") ProfileHandle changed to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1869
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "call not found with session id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public replyModifyCallType(IIII)I
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1310
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->replyModifyCallType(IIIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)I
    .locals 7

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replyModifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmcCallTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "replyModifyCallType(): session not found."

    .line 1321
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1325
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReplyModifyCall,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000006

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1327
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->replyModifyCallType(IIIILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public replyWithIdc(IIIILjava/lang/String;)I
    .locals 7

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replyWithIdc(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idcExtra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "replyWithIdc(): session not found."

    .line 1337
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1341
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "replyWithIdc,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000006

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1343
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->replyWithIdc(IIIILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public resumeCall(I)I
    .locals 4

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "resumeCall: session not found."

    .line 1100
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->dumpCall()V

    const/4 p0, -0x1

    return p0

    .line 1106
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIndicationFlag(I)V

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResumeCall,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x30000004

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1108
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->resumeCall(ILandroid/os/Message;)V

    return v2
.end method

.method public sendCmcInfo(ILandroid/os/Bundle;)I
    .locals 4

    const-string/jumbo v0, "sendCmcInfo"

    const-string v1, "ResipVolteHandler"

    .line 1735
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "sendCmcInfo: session not found."

    .line 1740
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string/jumbo v1, "record_event"

    .line 1743
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "extra"

    .line 1744
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "sip_call_id"

    .line 1745
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1746
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    invoke-direct {p0, v3, v1, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->createCmcInfoContents(IIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendCmcInfo(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendDtmfEvent(ILjava/lang/String;)V
    .locals 2

    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDtmfEvent(): sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dtmfEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "sendDtmfEvent(): session not found."

    .line 1697
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1700
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendDtmfEvent(ILjava/lang/String;)V

    return-void
.end method

.method public sendEmergencyLocationPublish(I)I
    .locals 2

    .line 1721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendEmergencyLocationPublish: sessionid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "sendEmergencyLocationPublish: session not found."

    .line 1725
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1729
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendEmergencyLocationPublish(ILandroid/os/Message;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendInfo(IILjava/lang/String;I)I
    .locals 8

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1708
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v4

    if-nez v0, :cond_0

    const-string/jumbo p0, "sendInfo: session not found."

    .line 1710
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1714
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result p2

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->createUssdContents(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v6

    const/4 p2, 0x7

    .line 1715
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move v3, p1

    move v5, p4

    .line 1714
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendInfo(IIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendNegotiatedLocalSdp(ILjava/lang/String;)V
    .locals 2

    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendNegotiatedLocalSdp(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "sendNegotiatedLocalSdp(): session not found."

    .line 1899
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1903
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendNegotiatedLocalSdp(ILjava/lang/String;)V

    return-void
.end method

.method public sendReInvite(ILcom/sec/internal/constants/ims/SipReason;)I
    .locals 6

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReInvite(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "sendReInvite(): session not found."

    .line 1369
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v5, ""

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateCall(IIILcom/sec/internal/constants/ims/SipReason;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendReInviteWithIdcExtra(ILjava/lang/String;)I
    .locals 2

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReInviteWithIdcExtra(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "sendReInviteWithIdcExtra(): session not found."

    .line 1382
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1386
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateWithIdc(IILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendText(ILjava/lang/String;I)I
    .locals 2

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendText:: sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", len: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "sendText: session not found."

    .line 1053
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1057
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendText(ILjava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendVcsInfo(ILandroid/os/Bundle;)I
    .locals 12

    const-string/jumbo v0, "sendVcsInfo"

    const-string v1, "ResipVolteHandler"

    .line 1752
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const-string/jumbo p0, "sendVcsInfo: session not found."

    .line 1755
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v3, "com.samsung.telephony.extra.ims.VCS_ACTION"

    .line 1758
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "com.samsung.telephony.extra.ims.VCS_X_POS"

    .line 1759
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v3, "com.samsung.telephony.extra.ims.VCS_Y_POS"

    .line 1760
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v3, "com.samsung.telephony.extra.ims.VCS_DURATION"

    .line 1761
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v3, "slide"

    .line 1763
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_3

    const-string v3, "com.samsung.telephony.extra.ims.VCS_SLIDING_STAGE"

    .line 1764
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1765
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertSlidingStage(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1769
    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertSlidingStage(Ljava/lang/String;)I

    move-result v2

    move v9, v2

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo p0, "sendVcsInfo: slidingStage is invalid"

    .line 1766
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    move v9, v11

    :goto_1
    const-string v2, "com.samsung.telephony.extra.ims.VCS_TIMESTAMP"

    .line 1771
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1772
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendVcsInfo event:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", x:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", y:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", duration:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slidingStage:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object p2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->createVcsInfoContents(Ljava/lang/String;IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendVcsInfo(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V

    return v11
.end method

.method public setAutomaticMode(IZ)V
    .locals 5

    .line 1583
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    aput-boolean p2, v0, p1

    .line 1584
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    aget v1, v1, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    aget p0, p0, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, p1, v1, v3, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configCall(IZZZ)V

    return-void
.end method

.method public setOutOfService(ZI)V
    .locals 3

    const-string v0, "ResipVolteHandler"

    .line 1594
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOutOfService() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1595
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mOutOfService:[Z

    aput-boolean p1, p0, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "setOutOfService: mOutOfService out of bound"

    .line 1597
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setQuantumSecurityInfo(ILandroid/os/Bundle;)I
    .locals 7

    .line 1805
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ResipVolteHandler"

    const-string/jumbo p1, "setQuantumSecurityInfo: session not found."

    .line 1808
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "call_direction"

    .line 1811
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "crypto_mode"

    .line 1812
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v0, "qt_session_id"

    .line 1813
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "session_key"

    .line 1814
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1815
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setQuantumSecurityInfo(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setRttMode(II)V
    .locals 6

    .line 1613
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    aget v1, v0, p1

    if-eq v1, p2, :cond_8

    .line 1614
    aput p2, v0, p1

    .line 1615
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    aget v1, v1, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p2, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v0, p1, v1, v2, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configCall(IZZZ)V

    const-string v0, "mmtel"

    .line 1619
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "mmtel-video"

    .line 1621
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_8

    .line 1625
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v1

    const/4 v2, 0x4

    const/4 v5, 0x3

    if-ne v1, v2, :cond_5

    .line 1626
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq p2, v0, :cond_4

    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE_OFF:I

    if-ne p2, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v5

    goto :goto_3

    .line 1632
    :cond_5
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 1633
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p2, v0, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    .line 1639
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->setTextMode(II)V

    .line 1640
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "RTT mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " convert to TextMode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipVolteHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public setTtyMode(III)I
    .locals 5

    .line 1554
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    aget v0, p2, p1

    const/4 v1, 0x0

    if-eq v0, p3, :cond_4

    .line 1555
    aput p3, p2, p1

    .line 1556
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v2, 0x1

    if-eq p3, v0, :cond_0

    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq p3, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    aget v3, v3, p1

    sget v4, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {p2, p1, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configCall(IZZZ)V

    const-string p2, "mmtel"

    .line 1561
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "mmtel-video"

    .line 1563
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_4

    .line 1566
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 1568
    sget p2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p3, p2, :cond_3

    const/4 p2, 0x3

    goto :goto_2

    :cond_3
    const/4 p2, 0x2

    .line 1573
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTY mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " convert to TextMode "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ResipVolteHandler"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->setTextMode(II)V

    :cond_4
    return v1
.end method

.method public setVideoCrtAudio(IZ)V
    .locals 2

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoCrtAudio(): sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "setVideoCrtAudio(): session not found."

    .line 1686
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1689
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setVideoCrtAudio(IZ)V

    return-void
.end method

.method public startNWayConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I
    .locals 19

    move-object/from16 v0, p2

    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNWayConferenceCall: regId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ResipVolteHandler"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v5

    const/4 v1, -0x1

    if-nez v5, :cond_0

    const-string/jumbo v0, "startNWayConferenceCall: no UserAgent found."

    .line 1118
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    move-object/from16 v2, p0

    .line 1121
    invoke-direct {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->checkConfererenceCallData(Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I

    move-result v4

    if-ne v4, v1, :cond_1

    return v1

    .line 1125
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1126
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move-object v7, v4

    .line 1128
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSupportPrematureEnd()Z

    move-result v17

    .line 1129
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1130
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSessionIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_3

    const-string/jumbo v0, "startNWayConferenceCall: not enough sessionIds"

    .line 1131
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1134
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSessionIds()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1135
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSessionIds()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getCallType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object v11

    .line 1136
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object v15

    .line 1137
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getExtraSipHeaders()Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v4, p0

    .line 1134
    invoke-direct/range {v4 .. v18}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)I

    move-result v0

    return v0

    .line 1139
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v8

    .line 1140
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getCallType()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object v12

    .line 1141
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object v14

    .line 1142
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v4, p0

    move/from16 v16, v17

    .line 1139
    invoke-direct/range {v4 .. v16}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public startVideoEarlyMedia(I)I
    .locals 2

    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startVideoEarlyMedia(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "startVideoEarlyMedia(): session not found."

    .line 1824
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1827
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->startVideoEarlyMedia(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public transferCall(ILjava/lang/String;)I
    .locals 2

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transferCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " taruri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    .line 1445
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "transferCall: session not found."

    .line 1450
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1454
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, p2, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transferCall(ILjava/lang/String;ILandroid/os/Message;)V

    return v1
.end method

.method public unregisterForCallStateEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCallStateEvent:"

    .line 464
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCdpnInfoEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCdpnInfoEvent:"

    .line 638
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCmcInfoEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCmcInfoEvent:"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCurrentLocationDiscoveryDuringEmergencyCallEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCurrentLocationDiscoveryDuringEmergencyCallEvent:"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCurrentLocationDiscoveryDuringEmergencyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDedicatedBearerNotifyEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForDedicatedBearerNotifyEvent:"

    .line 554
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDialogEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForDialogEvent:"

    .line 524
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDtmfEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForDtmfEvent:"

    .line 590
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIncomingCallEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCallStateEvent:"

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForReferStatus(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForReferStatus:"

    .line 512
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRrcConnectionEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForRrcConnectionEvent:"

    .line 566
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRtpLossRateNoti(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForRtpLossRateNoti:"

    .line 626
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSIPMSGEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForSIPMSGEvent:"

    .line 614
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForTextEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForTextEvent:"

    .line 602
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForUssdEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForUssdEvent:"

    .line 488
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterQuantumSecurityStatusEvent(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterQuantumSecurityStatusEvent:"

    .line 578
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mQuantumSecurityStatusEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public updateAirplaneMode(Z)V
    .locals 2

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAirplaneMode: isOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateAirplaneMode(Z)V

    return-void
.end method

.method public updateAudioInterface(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1648
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->updateAudioInterface(ILjava/lang/String;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method public updateAudioInterface(ILjava/lang/String;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 7

    const-string v0, "SAE"

    const-string v1, "CPVE"

    .line 1653
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    const-string v2, "ResipVolteHandler"

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Not Registered Volte Services"

    .line 1659
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object p3, p1

    .line 1664
    :goto_0
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {p1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1665
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    const/16 v4, 0x8

    .line 1666
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1665
    invoke-virtual {p3, p2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateAudioInterface(Ljava/lang/String;Landroid/os/Message;)V

    const/4 v3, 0x0

    .line 1669
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1388

    invoke-virtual {p1, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "updateAudioInterface: timeout."

    .line 1670
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1676
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioPathUpdatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p3, p2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1675
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1676
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioPathUpdatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p3, p2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1678
    :cond_5
    throw p1

    .line 1675
    :catch_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1676
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioPathUpdatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p3, p2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public updateNrSaModeOnStart(I)V
    .locals 2

    .line 1883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNrSaModeOnStart: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateNrSaModeOnStart(I)V

    return-void
.end method

.method public updateScreenOnOff(II)V
    .locals 0

    .line 1833
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateScreenOnOff(II)V

    return-void
.end method

.method public updateXqEnable(IZ)V
    .locals 0

    .line 1838
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateXqEnable(IZ)V

    return-void
.end method
