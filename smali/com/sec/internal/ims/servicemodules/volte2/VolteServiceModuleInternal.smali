.class public Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "VolteServiceModuleInternal.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;,
        Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    }
.end annotation


# static fields
.field private static final ACTION_SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field protected static final RELAY_CHANNEL_ESTABLISHED:I = 0x0

.field protected static final RELAY_CHANNEL_TERMINATED:I = 0x1


# instance fields
.field protected mActiveImpu:[Lcom/sec/ims/util/ImsUri;

.field protected mAllowedNetworkType:[J

.field protected mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

.field protected mAutomaticMode:[Z

.field protected mCheckRunningState:Z

.field protected mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

.field protected mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

.field protected final mContext:Landroid/content/Context;

.field protected mDataAccessNetwork:[I

.field private mDelayRinging:Z

.field protected mEcbmMode:[Z

.field protected mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

.field protected mEnableCallWaitingRule:Z

.field protected mEpdgListener:Lcom/sec/ims/ImsManager$EpdgListener;

.field protected final mEpdnDisconnectTimeOut:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

.field protected mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field protected mImsCallSipErrorFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

.field protected mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

.field protected mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

.field private mIsDeregisterTimerRunning:[Z

.field protected mIsLteEpsOnlyAttached:[Z

.field private mIsLteRetrying:[Z

.field private mIsMissedCallSmsChecking:[Z

.field protected mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

.field protected mLastRegiErrorCode:[I

.field private mMaxPhoneCount:I

.field protected mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field protected mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

.field private mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mMmtelAcquiredEver:Z

.field protected mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

.field protected mNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/ims/os/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

.field protected final mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field protected final mPhoneStateListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

.field protected mProhibited:[Z

.field protected mRatChanged:[Z

.field protected final mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field protected mReleaseWfcBeforeHO:[Z

.field protected mRttMode:[I

.field private mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

.field protected final mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

.field protected final mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mTtyMode:[I

.field protected mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

.field protected mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

.field private mWfcEpdgConnectionListener:Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

.field protected mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;


# direct methods
.method public static synthetic $r8$lambda$MLGaGXND1u8AycB7dZeJIwC9nEA(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->lambda$onImsIncomingCallEvent$0(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKdJRtLSFVAyZJHzYvr1bx690_I(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->lambda$updateNrSaModeOnStart$1(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMissedCallSms(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->handleMissedCallSms(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTelephonyNotResponding(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onTelephonyNotResponding()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 186
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 123
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    const/4 v9, 0x0

    .line 140
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    .line 141
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    const/4 v10, 0x1

    .line 142
    iput-boolean v10, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEnableCallWaitingRule:Z

    .line 149
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    const/4 v11, 0x0

    .line 150
    iput-boolean v11, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMmtelAcquiredEver:Z

    .line 159
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    .line 160
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgConnectionListener:Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

    .line 161
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdgListener:Lcom/sec/ims/ImsManager$EpdgListener;

    .line 167
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    .line 169
    iput-boolean v11, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    .line 171
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    iput v10, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMaxPhoneCount:I

    .line 187
    iput-boolean v11, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCheckRunningState:Z

    .line 188
    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 189
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->NAME:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 190
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    move-object/from16 v1, p5

    .line 191
    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    move-object/from16 v1, p6

    .line 192
    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-object/from16 v1, p7

    .line 193
    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 194
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    .line 196
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    iput v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMaxPhoneCount:I

    .line 197
    new-array v3, v15, [Z

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mProhibited:[Z

    .line 198
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    .line 199
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    .line 200
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    .line 201
    new-array v4, v15, [Lcom/sec/ims/DialogEvent;

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    .line 202
    new-array v4, v15, [Lcom/sec/ims/util/ImsUri;

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    .line 203
    new-array v4, v15, [I

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    .line 204
    new-array v4, v15, [I

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    .line 205
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAutomaticMode:[Z

    .line 206
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    .line 207
    new-array v4, v15, [I

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    .line 208
    new-array v4, v15, [I

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDataAccessNetwork:[I

    .line 209
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    .line 210
    new-array v2, v2, [Z

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsMissedCallSmsChecking:[Z

    .line 211
    new-array v2, v15, [Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    .line 212
    new-array v2, v15, [J

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    .line 213
    new-array v2, v15, [Z

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteRetrying:[Z

    .line 214
    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 215
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 216
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 217
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 218
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    sget v3, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 221
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    const/4 v14, -0x1

    invoke-static {v2, v14}, Ljava/util/Arrays;->fill([II)V

    .line 222
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAutomaticMode:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 223
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 224
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([II)V

    .line 225
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 226
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsMissedCallSmsChecking:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 227
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 228
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteRetrying:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 231
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v2, v6, v10, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v3, 0x2

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v3, 0x3

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x8

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x26

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerQuantumSecurityStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x11

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x16

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x19

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x12

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x27

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForAudioPathUpdated(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x18

    .line 241
    invoke-static {v6, v2, v9}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForSubIdChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    new-instance v2, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    const v3, -0x7fffaedf

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    .line 252
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 253
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    .line 254
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    .line 255
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v4

    invoke-direct {v2, v6, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V

    .line 256
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v4

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    const/16 v2, 0x1e

    .line 258
    invoke-interface {v1, v6, v2, v9}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x1f

    .line 259
    invoke-interface {v1, v6, v2, v9}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 260
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 263
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, v6, v7, v15}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;I)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    .line 264
    new-instance v12, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/interfaces/ims/core/IPdnController;ILandroid/os/Looper;)V

    iput-object v12, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    .line 267
    iput-object v7, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 268
    iput-object v8, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 269
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 270
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    .line 271
    new-instance v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Landroid/os/Looper;)V

    iput-object v12, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 273
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-direct {v0, v6, v1, v8, v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSipErrorFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

    .line 274
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v5, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v7, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    move-object v12, v0

    move-object/from16 v13, p1

    move v8, v14

    move-object v14, v1

    move v1, v15

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move/from16 v20, v1

    invoke-direct/range {v12 .. v20}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;I)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    .line 276
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v6, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    .line 277
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    .line 278
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    move-object/from16 v4, p1

    invoke-direct {v0, v6, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    .line 279
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    .line 282
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/sec/internal/ims/util/ImsUtil;->isRttModeOnFromCallSettings(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    .line 282
    :goto_1
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(I)V

    .line 284
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "current_tty_mode"

    invoke-static {v0, v2, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v11, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setTtyMode(II)V

    if-le v1, v10, :cond_2

    .line 286
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_tty_mode2"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v10, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setTtyMode(II)V

    .line 288
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v11}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x28

    invoke-virtual {v6, v1, v0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.LTE_BAND"

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.PSBARRED_FOR_VOLTE"

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.att.iqi.action.SERVICE_STATE_CHANGED"

    .line 297
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 298
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerEpdgConnectionListener()V

    .line 302
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;

    invoke-direct {v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;

    invoke-direct {v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.ACTION_TELEPHONY_NOT_RESPONDING"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.imsservice.TELEPHONY_NOT_RESPONDING"

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 368
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "VolteServiceModule created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private acceptCurrentIncomingCall(ILcom/sec/ims/util/SipError;Lcom/sec/internal/constants/Mno;)Z
    .locals 4

    .line 1696
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1698
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    if-ne p3, v1, :cond_1

    sget-object p3, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    if-ne p2, p3, :cond_1

    if-eqz v0, :cond_1

    iget-object p2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p3, 0xbb8

    .line 1699
    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1702
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1704
    invoke-interface {p2, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 1706
    :goto_0
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TMO_MT_GUARD_TIMEOUT expired, prevIncoming callState:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 1713
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    iget-object p3, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1714
    invoke-virtual {p3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p3

    new-instance v1, Lcom/sec/ims/util/SipError;

    const/16 v2, 0x1e6

    const-string v3, "MTGuard Expired"

    invoke-direct {v1, v2, v3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 1713
    invoke-interface {p0, p1, p3, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    .line 1715
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Reject previous call("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and accept current call"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 1719
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Reject current call"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)I
    .locals 0

    .line 122
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method private getDialingNumber(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 1

    .line 1504
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object p1

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/helper/ImsCallUtil;->getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;

    move-result-object p1

    .line 1505
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-nez p0, :cond_4

    .line 1506
    sget-object p0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p2, p0, :cond_3

    sget-object p0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 1508
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const-string v0, "0"

    if-ne p2, p0, :cond_1

    const-string p0, "+82"

    .line 1509
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1510
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/Mno;->TELENOR_MM:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_2

    const-string p0, "+95"

    .line 1511
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1512
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "+61"

    .line 1513
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1507
    :cond_3
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method private getPhoneIdFromExternalCall()I
    .locals 3

    .line 1952
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v0

    .line 1953
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1954
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-nez v2, :cond_0

    .line 1955
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phone id for ps call : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p0

    return p0

    .line 1960
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getCsCallPhoneIdByState(I)I

    move-result p0

    return p0
.end method

.method private getPhoneStateListener(I)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    .locals 2

    .line 403
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    .line 404
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->getInternalPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 408
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getPhoneStateListener: psli is not exist."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private handleMissedCallSms(Landroid/content/Intent;)V
    .locals 0

    .line 2148
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->sendMissedCallSms(Landroid/content/Intent;)V

    return-void
.end method

.method private handlePreAlerting(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;ZZLcom/sec/ims/util/SipError;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v2, p3

    .line 1527
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 1529
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v4, "change mno to MDMN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    sget-object v3, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    :cond_0
    move-object v9, v3

    .line 1533
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasCsCall(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-nez v3, :cond_1

    .line 1536
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Has Active CS Call, try after"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    .line 1537
    invoke-virtual {v1, v0, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1541
    :cond_1
    new-instance v3, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v3}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 1542
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v4

    .line 1544
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    const/4 v10, 0x0

    move-object/from16 v6, p5

    if-ne v6, v5, :cond_4

    .line 1545
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSipErrorFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorForCheckRejectIncomingCall(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;

    move-result-object v6

    if-eq v6, v5, :cond_5

    .line 1547
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onImsIncomingCallEvent: reject call. error="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-direct {v1, v5, v6, v9}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->acceptCurrentIncomingCall(ILcom/sec/ims/util/SipError;Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1551
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v12

    invoke-interface {v7, v11, v12, v6}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    .line 1552
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v7

    invoke-static {v7}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isNotifyRejectedCall(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1553
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->convertErrorToRejectReason(Lcom/sec/ims/util/SipError;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectCause(I)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    move v12, v5

    move-object v11, v6

    goto :goto_1

    .line 1559
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isNotifyRejectedCall(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1560
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/helper/ImsCallUtil;->convertErrorToRejectReason(Lcom/sec/ims/util/SipError;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectCause(I)V

    :cond_5
    move-object v11, v6

    move v12, v10

    .line 1563
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v5

    const/4 v13, 0x5

    const/4 v6, 0x1

    if-eqz v5, :cond_d

    .line 1564
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    .line 1566
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v7

    const/4 v14, -0x1

    if-eqz v7, :cond_7

    .line 1567
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getCmcEdCallSlot()I

    move-result v7

    if-ne v7, v14, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getCmcEdCallSlot()I

    move-result v5

    .line 1569
    :cond_7
    :goto_2
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1570
    invoke-interface {v15}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v14

    if-ne v14, v5, :cond_8

    .line 1571
    invoke-interface {v15}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result v14

    goto :goto_4

    :cond_8
    const/4 v14, -0x1

    goto :goto_3

    :cond_9
    const/4 v14, -0x1

    .line 1575
    :goto_4
    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v7

    if-nez v7, :cond_a

    if-eq v14, v13, :cond_a

    const/16 v7, 0xa

    if-eq v14, v7, :cond_a

    .line 1577
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImsIncomingCallEvent: reject call. simState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v2

    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->TEMPORARILY_UNAVAIABLE:Lcom/sec/ims/util/SipError;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    return-void

    .line 1580
    :cond_a
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1581
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getReplaces()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_b
    if-nez v5, :cond_c

    move v5, v6

    goto :goto_5

    :cond_c
    move v5, v10

    .line 1582
    :goto_5
    invoke-virtual {v1, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasCsCall(IZ)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1583
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkRejectIncomingCall: PD_CALL_EXISTS_ON_THE_OTHER_SLOT"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v2

    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->PD_CALL_EXISTS_ON_THE_OTHER_SLOT:Lcom/sec/ims/util/SipError;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    return-void

    .line 1589
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1590
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasDialingOrIncomingCall()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1591
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onImsIncomingCallEvent: Ignore incoming CMC reley call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1595
    :cond_e
    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v9, v5, :cond_f

    .line 1596
    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1597
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/sec/ims/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_f

    .line 1599
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1600
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onImsIncomingCallEvent: mobile data is off. Downgrade video call to voice call."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v6

    goto :goto_6

    :cond_f
    move v15, v4

    .line 1608
    :goto_6
    new-instance v4, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallProfileBuilder;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallProfileBuilder;-><init>()V

    .line 1610
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->builder(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCallType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setPhoneId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v4

    new-instance v5, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {v5}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    .line 1611
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v4

    .line 1612
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setNetworkType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setDirection(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v4

    .line 1613
    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setSamsungMdmnCall(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    .line 1614
    invoke-direct {v1, v8, v9}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getDialingNumber(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setDialingNumber(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1615
    invoke-interface {v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v4

    invoke-virtual {v2, v8, v9, v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setDisplayName(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    .line 1616
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getSipCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getEchoCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v9, v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setEchoCallId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    .line 1617
    invoke-virtual {v2, v8}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setComposerData(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    .line 1618
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getCmcEdCallSlot()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcEdCallSlot(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    .line 1619
    invoke-virtual {v2, v8, v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcDeviceId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    .line 1620
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->build()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    .line 1622
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1623
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    .line 1626
    :cond_10
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    .line 1627
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    aget v7, v3, v5

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move v6, v15

    .line 1626
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;II)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_11

    .line 1629
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "incomingCallSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1632
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->updateNrSaModeOnStart(II)V

    .line 1634
    invoke-virtual {v2, v10, v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->requestQuantumPeerProfileStatus(ZZ)V

    .line 1636
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    if-eq v11, v3, :cond_13

    if-eqz v12, :cond_12

    goto :goto_7

    .line 1664
    :cond_12
    new-instance v3, Lcom/sec/ims/volte2/data/ImsCallInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v14, v3

    move v6, v15

    move v15, v4

    move/from16 v16, v6

    invoke-direct/range {v14 .. v26}, Lcom/sec/ims/volte2/data/ImsCallInfo;-><init>(IIZZIIIILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1666
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {v4, v0, v3}, Lcom/sec/internal/google/SecImsNotifier;->onIncomingPreAlerting(ILcom/sec/ims/volte2/data/ImsCallInfo;)V

    goto/16 :goto_a

    .line 1637
    :cond_13
    :goto_7
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/internal/helper/os/PackageUtils;->isOneTalkFeatureEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1639
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isSupportImsDataChannel(I)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 1640
    new-instance v3, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getIdcExtra()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "sdp"

    .line 1641
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1642
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1643
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setRemoteBdcSdp(Ljava/lang/String;)V

    .line 1644
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    invoke-virtual {v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->onImsIncomingCallIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V

    .line 1646
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getBuilder()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    move-result-object v3

    .line 1647
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getLocalBdcSdp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->setSdp(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    move-result-object v3

    .line 1648
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->build()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    move-result-object v3

    .line 1649
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->encode()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 1651
    :cond_14
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_IDC_FW_TAG:Ljava/lang/String;

    const-string v4, "No BDC SDP within MT INVITE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string v3, ""

    .line 1654
    :goto_8
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v5

    invoke-direct {v1, v0, v8, v9}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isRingingBlocked(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v6, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->proceedIncomingCall(IZLjava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 1656
    :try_start_0
    invoke-virtual {v2, v13}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1658
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "session already removed: "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1660
    :goto_9
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1668
    :cond_16
    :goto_a
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyIncomingPreAlerting(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method

.method private hasDialingOrIncomingCallOnCS()Z
    .locals 2

    .line 1498
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string v1, "csdialing"

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string v1, "csalerting"

    .line 1499
    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string v0, "csincoming"

    .line 1500
    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private ignoreIncomingCallSession(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)I
    .locals 5

    .line 1724
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1725
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasDialingOrIncomingCall()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1726
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onImsIncomingCallEvent: Ignore incoming CMC reley call"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x642

    return p0

    .line 1729
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p2

    .line 1730
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v0

    const/4 v1, 0x1

    .line 1733
    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasCsCall(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1736
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getReplaces()Ljava/lang/String;

    move-result-object v1

    .line 1737
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoreIncomingCallSession: replaces "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 1739
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "need to reject incoming call.. due to CS Call"

    .line 1741
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result p1

    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    invoke-interface {p0, p1, v0, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    const/16 p0, 0x643

    return p0

    .line 1747
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasOutgoingCall(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1748
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ignoreIncomingCallSession: found outgoing call, reject incoming call error="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result p1

    invoke-interface {p0, p1, v0, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    const/16 p0, 0x647

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private isRequiredKorSpecificURN(ILjava/lang/String;)Z
    .locals 2

    .line 2157
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 2158
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMnoAsNwPlmn(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 2161
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2163
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 2166
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    return p1

    .line 2170
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 2171
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    .line 2174
    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x6

    if-eq p0, p2, :cond_3

    const/4 p2, 0x7

    if-eq p0, p2, :cond_3

    const/4 p2, 0x3

    if-eq p0, p2, :cond_3

    const/16 p2, 0x12

    if-eq p0, p2, :cond_3

    const/16 p2, 0x13

    if-eq p0, p2, :cond_3

    const/16 p2, 0x9

    if-ne p0, p2, :cond_4

    :cond_3
    return p1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private isRingingBlocked(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)Z
    .locals 3

    const-string p1, "enable"

    .line 1672
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_1

    .line 1673
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object p2

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/sec/internal/helper/ImsCallUtil;->getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;

    move-result-object p2

    .line 1674
    sget-object p3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialingNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1677
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "anonymous"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CALL_PRESENTATION : PRESENTATION_RESTRICTED(2)"

    .line 1678
    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.telecom.extra.CALL_PRESENTATION"

    const/4 v2, 0x2

    .line 1679
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    :try_start_0
    const-string v1, "content://com.android.phone.callsettings/reject_num"

    .line 1683
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "isblocking_provider_number"

    .line 1685
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v1, v2, p2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 1686
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "resultExtras_enable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1689
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p2, "isRingingBlocked exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isVideoSettingEnabled()Z
    .locals 2

    .line 1141
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$onImsIncomingCallEvent$0(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 0

    .line 1900
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method

.method private synthetic lambda$updateNrSaModeOnStart$1(II)V
    .locals 6

    .line 2210
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 2215
    fill-array-data v2, :array_0

    new-array v1, v1, [B

    .line 2216
    fill-array-data v1, :array_1

    .line 2217
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNrSaModeOnStart : start, subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_2

    .line 2220
    invoke-virtual {v4, v0, v2, v1}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v0

    .line 2221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNrSaModeOnStart : respLen : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2226
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateNrSaMode(IZ)V

    const-string v2, "is_support_update_sa_mode_on_start"

    .line 2227
    invoke-static {p1, v2, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 2230
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateNrSaModeOnStart(I)V

    :cond_2
    return-void

    :array_0
    .array-data 1
        0x2t
        -0x7ct
        0x0t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private onTelephonyNotResponding()V
    .locals 1

    .line 2113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->sendTelephonyNotResponding(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 2114
    invoke-static {p0}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    return-void
.end method

.method private registerEpdgConnectionListener()V
    .locals 1

    .line 1008
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgConnectionListener:Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

    .line 1042
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->registerWfcEpdgConnectionListener(Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;)V

    return-void
.end method

.method private setProfileForIncomingCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/Boolean;I)V
    .locals 2

    .line 1757
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_1

    .line 1758
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v0

    .line 1759
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1762
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasDsdaDialingOrIncomingVtOnOtherSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1765
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "There\'s no need to stopActiveCamera when other slot has incoming/outgoing vt call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->stopActiveCamera()V

    .line 1772
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 1774
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1775
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getRemoteVideoCapa()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 1776
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isNotifyRejectedCall(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1777
    invoke-virtual {v0, p5}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectCause(I)V

    .line 1779
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 1781
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startIncoming()V

    .line 1783
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getReplaces()Ljava/lang/String;

    move-result-object p0

    .line 1785
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1786
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1787
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p4, "Has replaces. Check Dialog Id"

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "replaceSipCallId: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setReplaceSipCallId(Ljava/lang/String;)V

    .line 1792
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    .line 1793
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getNotifyHistoryInfo()Ljava/lang/String;

    move-result-object p0

    .line 1794
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHasDiversion()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_4
    const-string p1, "not_notify"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1795
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHasDiversion()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1796
    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p1, "change_number"

    .line 1797
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1798
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string/jumbo p1, "toast_only"

    .line 1800
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1801
    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 1804
    :cond_7
    sget-object p0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq p3, p0, :cond_8

    const/4 p0, 0x0

    .line 1805
    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private updateCategoryList(I)Ljava/lang/String;
    .locals 10

    .line 907
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const-string v1, "ecc_category_list_cdma"

    const-string v2, ""

    .line 909
    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-gtz p1, :cond_0

    const-string/jumbo v3, "ril.ecclist_net0"

    goto :goto_0

    .line 911
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril.ecclist_net"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 912
    :goto_0
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ecc_category_list"

    .line 914
    invoke-static {p1, v4, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v2

    .line 917
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ril.ecclist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 918
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 919
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, ","

    if-nez v8, :cond_a

    .line 929
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 930
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v4, v3

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    .line 933
    :cond_2
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 934
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object v4, v6

    .line 937
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 938
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v4, v1

    .line 941
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 942
    sget-object p0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v0, p0, :cond_8

    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_7

    goto :goto_5

    .line 944
    :cond_7
    sget-object p0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_9

    .line 945
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 943
    :cond_8
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "000/4,08/4,110/4,999/4,118/4,"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    :goto_6
    return-object v4

    .line 920
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 921
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 923
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public acceptCallWhileSmsipRegistered(Lcom/sec/ims/ImsRegistration;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 494
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Not registered."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 497
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 498
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 500
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVowifiEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isVideoSettingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVideoSettingEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isEpdgConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 502
    invoke-interface {v5, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", VoiceNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 503
    invoke-interface {v5, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DataNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 504
    invoke-interface {v5, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", SMSIP="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "smsip"

    .line 505
    invoke-virtual {p1, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", VOICE="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mmtel"

    .line 506
    invoke-virtual {p1, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", VIDEO="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mmtel-video"

    .line 507
    invoke-virtual {p1, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 500
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVideoSettingEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 510
    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 511
    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 512
    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v1

    const/16 v3, 0xe

    if-eq v1, v3, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 513
    invoke-interface {p0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result p0

    const/16 v1, 0x12

    if-ne p0, v1, :cond_2

    .line 514
    :cond_1
    invoke-virtual {p1, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 515
    invoke-virtual {p1, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 516
    invoke-virtual {p1, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected clearDialogList(II)V
    .locals 7

    .line 1324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1325
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1326
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 1327
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Match RegId clear Dialog List"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    .line 1330
    new-instance v5, Lcom/sec/ims/DialogEvent;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v5, v4, v6}, Lcom/sec/ims/DialogEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1331
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/sec/ims/DialogEvent;->setRegId(I)V

    .line 1332
    invoke-virtual {v5, p1}, Lcom/sec/ims/DialogEvent;->setPhoneId(I)V

    const/16 v3, 0xf

    .line 1334
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1335
    invoke-virtual {p0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, v1, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-interface {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public dump()V
    .locals 4

    .line 451
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v1}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 454
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 457
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 459
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 466
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    new-instance v2, Landroid/util/StringBuilderPrinter;

    invoke-direct {v2, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const-string v3, "Service Module"

    .line 469
    invoke-virtual {p0, v2, v3}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getActiveDataPhoneId()I
    .locals 0

    .line 1452
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method public getCmcMediaController()Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    return-object p0
.end method

.method public getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
    .locals 0

    .line 1127
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    return-object p0
.end method

.method public getDataAccessNetwork(I)I
    .locals 0

    .line 1434
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDataAccessNetwork:[I

    aget p0, p0, p1

    return p0
.end method

.method public getDowngradedCallCount(I)I
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getDowngradedCallCount(I)I

    move-result p0

    return p0
.end method

.method public getE911CallCount(I)I
    .locals 0

    .line 830
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getE911CallCount(I)I

    move-result p0

    return p0
.end method

.method public getEpdgCallCount(I)I
    .locals 0

    .line 845
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEpdgCallCount(I)I

    move-result p0

    return p0
.end method

.method public getEpdgManager()Lcom/sec/epdg/EpdgManager;
    .locals 0

    .line 1424
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object p0

    return-object p0
.end method

.method public getEpsFbCallCount(I)I
    .locals 0

    .line 835
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEpsFbCallCount(I)I

    move-result p0

    return p0
.end method

.method public getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1208
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1212
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getIdcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;
    .locals 0

    .line 2252
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    return-object p0
.end method

.method public getImsMediaController()Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsLteRetrying(I)Z
    .locals 0

    .line 1944
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteRetrying:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getLastRegiErrorCode(I)I
    .locals 0

    .line 1112
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    aget p0, p0, p1

    return p0
.end method

.method public getLteEpsOnlyAttached(I)Z
    .locals 0

    .line 1429
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getMediaSvcIntf()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;
    .locals 0

    .line 1122
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    return-object p0
.end method

.method public getMergeCallType(IZ)I
    .locals 0

    .line 1468
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getMergeCallType(IZ)I

    move-result p0

    return p0
.end method

.method public getMobileCareController()Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;
    .locals 0

    .line 1303
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    return-object p0
.end method

.method public getNetwork()Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 1

    .line 1235
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    return-object p0
.end method

.method public getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 0

    .line 1240
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    return-object p0
.end method

.method public getNrSaCallCount(I)I
    .locals 0

    .line 840
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getNrSaCallCount(I)I

    move-result p0

    return p0
.end method

.method public getRatChanged(I)Z
    .locals 0

    .line 1307
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getRttDbrTimer(I)J
    .locals 1

    .line 749
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    goto :goto_0

    .line 754
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz p0, :cond_1

    .line 755
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 758
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getDbrTimer()I

    move-result p0

    int-to-long p0, p0

    goto :goto_1

    :cond_2
    const-wide/16 p0, 0x4e20

    :goto_1
    return-wide p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1190
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByCallType(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1216
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallType(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByCallType(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1220
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallType(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByRegId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1194
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByRegId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1157
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1167
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1162
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionCount()I
    .locals 0

    .line 1180
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result p0

    return p0
.end method

.method public getSessionCount(I)I
    .locals 0

    .line 1185
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount(I)I

    move-result p0

    return p0
.end method

.method public getSessionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1199
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1204
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSrvccVersion(I)I
    .locals 1

    const-string/jumbo p0, "srvcc_version"

    const/4 v0, 0x0

    .line 1440
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTotalCallCount(I)I
    .locals 0

    .line 815
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getTotalCallCount(I)I

    move-result p0

    return p0
.end method

.method public getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 899
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 900
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz p0, :cond_0

    .line 901
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoCallCount(I)I
    .locals 0

    .line 820
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getVideoCallCount(I)I

    move-result p0

    return p0
.end method

.method public handleAllowedNetworkTypeChanged(IJ)V
    .locals 3

    .line 990
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    aget-wide v1, v0, p1

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    return-void

    .line 991
    :cond_0
    aput-wide p2, v0, p1

    .line 992
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {p2, p3}, Lcom/sec/internal/helper/ImsCallUtil;->isNrAvailable(J)Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateNrPreferredMode(IZ)V

    return-void
.end method

.method public handleDedicatedEventAfterHandover(I)V
    .locals 0

    .line 2109
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->handleDedicatedEventAfterHandover(I)V

    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public hasActiveCall(I)Z
    .locals 0

    .line 1171
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasActiveCall(I)Z

    move-result p0

    return p0
.end method

.method public hasCsCall(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1269
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasCsCall(IZ)Z

    move-result p0

    return p0
.end method

.method public hasCsCall(IZ)Z
    .locals 4

    .line 1275
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    .line 1277
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 1279
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1280
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "only one PS incoming call exists"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1286
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1288
    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    move v3, p0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1294
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasCsCall: numPsCall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callState["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public hasDialingOrIncomingCall()Z
    .locals 2

    .line 1487
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasDialingOrIncomingCallOnCS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1488
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SD has already CS dialing or incoming call on SIM"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1490
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasDialingOrIncomingCall()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1491
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SD has already PS dialing or incoming call on SIM"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasDsdaDialingOrIncomingVtOnOtherSlot(I)Z
    .locals 0

    .line 2153
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasDsdaDialingOrIncomingVtOnOtherSlot(I)Z

    move-result p0

    return p0
.end method

.method public hasEmergencyCall(I)Z
    .locals 0

    .line 1147
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasEmergencyCall(I)Z

    move-result p0

    return p0
.end method

.method public hasEstablishedCall(I)Z
    .locals 0

    .line 1175
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasEstablishedCall(I)Z

    move-result p0

    return p0
.end method

.method public hasOutgoingCall(I)Z
    .locals 0

    .line 1300
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasOutgoingCall(I)Z

    move-result p0

    return p0
.end method

.method public hasRingingCall()Z
    .locals 1

    const/4 v0, -0x1

    .line 1225
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasRingingCall(I)Z

    move-result p0

    return p0
.end method

.method public hasRingingCall(I)Z
    .locals 0

    .line 1230
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasRingingCall(I)Z

    move-result p0

    return p0
.end method

.method public init()V
    .locals 1

    .line 373
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->init()V

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->init()V

    .line 376
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->init()V

    return-void
.end method

.method public isCallBarringByNetwork(I)Z
    .locals 1

    const-string/jumbo p0, "ss_callbarring_by_network"

    const/4 v0, 0x0

    .line 1447
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCallServiceAvailable(ILjava/lang/String;)Z
    .locals 8

    .line 639
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 640
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    .line 641
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 646
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 648
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "UserAgent is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 653
    :cond_1
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->isRegistering()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 656
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    .line 657
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v5

    .line 656
    invoke-interface {v2, v4, v5, v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 658
    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    .line 661
    :cond_2
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->isDeregistring()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 662
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, " is not available due to Deregistring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 666
    :cond_3
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 668
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 671
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 674
    :cond_4
    iget-boolean v4, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v4, :cond_5

    .line 675
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not available due to outOfService"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 679
    :cond_5
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string v5, " is not available due to unsupported N/W"

    const/16 v6, 0x12

    if-ne v2, v4, :cond_9

    .line 680
    iget v2, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v2, v6, :cond_6

    .line 681
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 682
    :cond_6
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v1, v2, :cond_7

    .line 683
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasActiveCall(I)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 687
    :cond_7
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 689
    :cond_8
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 692
    :cond_9
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_b

    .line 695
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isInvite403DisabledService(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 696
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not available due to isInvite403DisabledService"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 700
    :cond_a
    iget v4, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v4

    if-nez v4, :cond_d

    iget v4, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v4, v6, :cond_d

    .line 702
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 705
    :cond_b
    sget-object v4, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_c

    .line 707
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 708
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not available due to N/W suspend"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 711
    :cond_c
    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_d

    const-string v4, "mmtel-call-composer"

    if-ne p2, v4, :cond_d

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 712
    invoke-static {p1, v4}, Lcom/sec/internal/ims/util/ImsUtil;->getComposerAuthValue(ILandroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_d

    .line 717
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "TMO: return false for composerauth 0 and callcomposer service case"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 721
    :cond_d
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getDisallowReregi()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 724
    iget v4, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v4

    if-nez v4, :cond_e

    iget v4, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v4, v6, :cond_e

    .line 726
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 731
    :cond_e
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_f

    .line 732
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Call Service is not available for delayedDeregiTimer"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 736
    :cond_f
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "mmtel"

    .line 738
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    iget p0, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-nez p0, :cond_10

    .line 739
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call Service is not available for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 744
    :cond_10
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 643
    :cond_11
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p0, p1, p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCallServiceAvailableOnSecondary(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCsfbErrorCode(ILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/util/SipError;)Z
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCsfbErrorCode(Landroid/content/Context;ILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/util/SipError;)Z

    move-result p0

    return p0
.end method

.method public isEcbmMode(I)Z
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isEmergencyRegistered(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 395
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableCallWaitingRule()Z
    .locals 0

    .line 1132
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEnableCallWaitingRule:Z

    return p0
.end method

.method protected isLTEDataModeEnabled(I)Z
    .locals 6

    .line 1066
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1067
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 1072
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-interface {p0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPreferredNetworkType(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/16 v1, 0xe

    if-eq p0, v1, :cond_2

    const/16 v1, 0x12

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    .line 1075
    :goto_1
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTEDataMode : netType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " subid = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move v1, v2

    .line 1077
    :catch_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "LTEDataMode : getPreferredNetworkType fail"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LTEDataMode : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v0

    :cond_4
    :goto_3
    return v2
.end method

.method public isMdmiEnabled(I)Z
    .locals 1

    const-string p0, "enable_mdmi"

    const/4 v0, 0x0

    .line 2187
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isMmtelAcquiredEver()Z
    .locals 0

    .line 1137
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMmtelAcquiredEver:Z

    return p0
.end method

.method public isNotifyRejectedCall(I)Z
    .locals 1

    const-string p0, "notify_rejected_call"

    const/4 v0, 0x0

    .line 1522
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isQSSSuccessAuthAndLogin(I)Z
    .locals 3

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2196
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getQuantumEncryptionServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;

    move-result-object p0

    .line 2197
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;->isSuccessAuthAndLogin()Z

    move-result p0

    .line 2198
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isQSSSuccessAuthAndLogin: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isRegisteredOver3gppPsVoice(I)Z
    .locals 0

    .line 1093
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    return p0
.end method

.method public isRoaming(I)Z
    .locals 2

    .line 1085
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1088
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSilentRedialEnabled(Landroid/content/Context;I)Z
    .locals 1

    const-string/jumbo p0, "silent_redial"

    .line 1117
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected isVolteSettingEnabled()Z
    .locals 4

    .line 1060
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    .line 1061
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voiceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isVowifiEnabled(I)Z
    .locals 2

    .line 1046
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 1047
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1048
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->getRoamPrefMode(Landroid/content/Context;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public notifyDSDAVideoCapa(I)V
    .locals 3

    .line 2239
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDSDAVideoCapa : phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v1, :cond_0

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 2241
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEstablishedCall(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "notifyDSDAVideoCapa : There is no active call on phoneId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2246
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEstablishedCall(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 2247
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->notifyDSDAVideoCapa(Z)V

    return-void
.end method

.method public notifyImsCallEventForVideo(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 0

    .line 2082
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyImsCallEventForVideo(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void
.end method

.method public notifyOnIncomingCall(II)V
    .locals 4

    .line 1914
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1920
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1921
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1923
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1925
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getPhoneIdFromExternalCall()I

    move-result v0

    goto :goto_0

    .line 1927
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 1932
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnIncomingCall SD orig phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 1938
    :cond_1
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/google/SecImsNotifier;->onIncomingCall(II)V

    const/4 p1, 0x0

    .line 1940
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    return-void
.end method

.method public notifyProgressIncomingCall(ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1315
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->convertToSessionId(I)I

    move-result p0

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->proceedIncomingCall(IZLjava/util/HashMap;Ljava/lang/String;)I

    return-void
.end method

.method protected onActiveDataSubscriptionChanged()V
    .locals 3

    .line 428
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onActiveDataSubscriptionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 430
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    .line 431
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->unRegisterPhoneStateListener(I)V

    .line 433
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 434
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerPhoneStateListener(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCallModifyRequested(I)V
    .locals 3

    .line 1255
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallModifyRequested: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1259
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->MODIFY_REQUESTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    :cond_0
    return-void
.end method

.method public onConferenceParticipantAdded(ILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConferenceParticipantRemoved(ILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onConfigUpdated(ILjava/lang/String;)V
    .locals 3

    .line 1414
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigUpdated["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VOLTE_ENABLED"

    .line 1416
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LVC_ENABLED"

    .line 1417
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 1418
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onServiceSwitched(ILandroid/content/ContentValues;)V

    :cond_1
    return-void
.end method

.method protected onImsCallEventForEstablish(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 1377
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 1378
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1379
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_0

    .line 1380
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1381
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1382
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImsCallEvent: session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " releaseAllVideoCall due to the audio call"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1382
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->releaseAllVideoCall()V

    .line 1388
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1389
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->notifyDSDAVideoCapa(I)V

    .line 1391
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1392
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getTotalCallCount(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 1393
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/ims/extensions/WiFiManagerExt;->setImsCallEstablished(Landroid/content/Context;Z)V

    .line 1396
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1397
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCmcDeviceId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDeviceId(Ljava/lang/String;)V

    .line 1401
    :cond_3
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p3, v1, p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onImsCallEventWhenEstablished(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V

    .line 1403
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 1404
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p1

    const-string p2, "99991111222"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendCmcCallStateForRcs(ILjava/lang/String;Z)V

    goto :goto_0

    .line 1405
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1406
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1408
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onImsConifgChanged(ILjava/lang/String;)V
    .locals 3

    .line 485
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: config changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/16 v0, 0x15

    const/4 v1, 0x0

    .line 487
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Z)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    .line 1811
    sget-object v8, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsIncomingCallEvent : sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " peerURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1812
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isDelayedIncoming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1811
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    iget-boolean v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    .line 1816
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getDelayRinging()Z

    move-result v1

    iput-boolean v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    .line 1817
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1818
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    if-nez v1, :cond_0

    const-string v0, "Not registered."

    .line 1820
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v2

    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    return-void

    .line 1826
    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isEnableVcid()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_1

    const-string v3, "VCID/MCID is enabled for only voice call, set Alertinfo null"

    .line 1827
    invoke-static {v8, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAlertInfo(Ljava/lang/String;)V

    .line 1831
    :cond_1
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isEnableVcid()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAlertInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/vcid/VcidHelper;->isVcidUrlExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 1832
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAlertInfo()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/sec/internal/ims/servicemodules/volte2/vcid/VcidHelper;->isVcidCapable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "VCID is not capable, set Alertinfo null"

    .line 1833
    invoke-static {v8, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAlertInfo(Ljava/lang/String;)V

    .line 1837
    :cond_2
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v9

    .line 1838
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 1840
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v10

    .line 1841
    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v10, v11, :cond_4

    const-string/jumbo v1, "same session exist."

    .line 1842
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 1843
    iget-boolean v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "something caused delay ringing false, notify to FW directly"

    .line 1844
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setDelayRinging(Z)V

    .line 1846
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setVideoCRBT(Z)V

    .line 1847
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {p0, v9, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->notifyOnIncomingCall(II)V

    :cond_3
    return-void

    .line 1850
    :cond_4
    invoke-static {v10}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "session is already Ending or Ended state"

    .line 1851
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1856
    :cond_5
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1857
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1859
    sget-object v0, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    :cond_6
    move-object v10, v0

    .line 1862
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move-object v11, v2

    goto :goto_1

    :cond_8
    :goto_0
    const-string v0, "onImsNewIncomingCallEvent: Unexpected incoming call while volte is off."

    .line 1863
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSipErrorFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

    iget-object v11, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    iget-boolean v12, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMmtelAcquiredEver:Z

    invoke-virtual {v0, v11, p1, v12, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorIncomingCallWithVolteOff(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;ZLcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    if-eq v0, v2, :cond_9

    .line 1868
    iget-object v11, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v12

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v13

    invoke-interface {v11, v12, v13, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    .line 1869
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isNotifyRejectedCall(I)Z

    move-result v11

    if-nez v11, :cond_9

    return-void

    :cond_9
    move-object v11, v0

    .line 1875
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPreAlerting is "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPreAlerting()Z

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPreAlerting()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    move-object v2, p1

    move/from16 v4, p2

    move-object v5, v11

    .line 1878
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->handlePreAlerting(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;ZZLcom/sec/ims/util/SipError;)V

    goto/16 :goto_3

    .line 1880
    :cond_a
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v12

    if-nez v12, :cond_b

    const-string v0, "onImsIncomingCallEvent: mIncomingCallSession is null"

    .line 1882
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    if-ne v11, v2, :cond_c

    .line 1887
    invoke-direct {p0, v1, v12, p1, v10}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->ignoreIncomingCallSession(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)I

    move-result v5

    :cond_c
    move v11, v5

    .line 1890
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, p0

    move-object v1, v12

    move-object v2, p1

    move-object v3, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setProfileForIncomingCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/Boolean;I)V

    .line 1891
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v11, :cond_e

    .line 1894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsIncomingCallEvent getCmcType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1896
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnIncomingCall(II)V

    .line 1900
    :cond_d
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v12}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1901
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onImsIncomingCallEvent(II)V

    goto :goto_2

    .line 1902
    :cond_e
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isNotifyRejectedCall(I)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1906
    :cond_f
    :goto_2
    iget-boolean v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    if-nez v0, :cond_10

    .line 1907
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {p0, v9, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->notifyOnIncomingCall(II)V

    :cond_10
    :goto_3
    return-void
.end method

.method public onSendRttSessionModifyRequest(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSendRttSessionModifyResponse(IZZ)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V
    .locals 3

    .line 1456
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimSubscribeIdChanged, SimSlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1456
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    .line 1461
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->unRegisterPhoneStateListener(I)V

    .line 1462
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerPhoneStateListener(I)V

    .line 1463
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerAllowedNetworkTypesListener(I)V

    return-void
.end method

.method protected onSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;)V
    .locals 3

    .line 1472
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] handleReinvite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1476
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    goto :goto_0

    .line 1478
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1481
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1482
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;Lcom/sec/internal/constants/Mno;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized onTextReceived(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 588
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 592
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRttEventBySession(ILcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 589
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9

    .line 1319
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "publishDialog: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v8, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public pushCallInternal()V
    .locals 0

    .line 1107
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->pushCallInternal()V

    return-void
.end method

.method public queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 2

    .line 620
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    const-string v1, "mmtel"

    .line 622
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 623
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    :cond_0
    const-string v1, "mmtel-video"

    .line 626
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 627
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    :cond_1
    const-string v1, "mmtel-call-composer"

    .line 630
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x10

    .line 631
    invoke-virtual {v0, p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    :cond_2
    return-object v0
.end method

.method public registerAllowedNetworkTypesListener(I)V
    .locals 5

    .line 953
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 954
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const-string/jumbo v2, "registerAllowedNetworkTypesListener("

    if-nez v1, :cond_0

    .line 955
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")  : not ValidSubscriptionId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 958
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->unregisterAllowedNetworkTypesListener(I)V

    .line 959
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 961
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")  : TelephonyManager null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 965
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    new-instance v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    invoke-direct {v3, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;I)V

    aput-object v3, v1, p1

    .line 966
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    aget-object v3, v3, p1

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 967
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v3

    aput-wide v3, v1, p1

    .line 968
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    aget-wide v1, p0, p1

    invoke-static {v1, v2}, Lcom/sec/internal/helper/ImsCallUtil;->isNrAvailable(J)Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateNrPreferredMode(IZ)V

    return-void
.end method

.method protected registerMissedSmsReceiver(ZI)V
    .locals 4

    .line 2119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/helper/ImsCallUtil;->getPhraseByMno(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2120
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missedcallSmsphrase = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsMissedCallSmsChecking:[Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    aput-boolean p1, v1, p2

    move p1, v3

    .line 2123
    :goto_1
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMaxPhoneCount:I

    if-ge v3, p2, :cond_2

    .line 2124
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsMissedCallSmsChecking:[Z

    aget-boolean p2, p2, v3

    if-eqz p2, :cond_1

    move p1, v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 2127
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez p2, :cond_3

    .line 2128
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "register mMissedSmsIntentReceiver"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$4;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$4;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2138
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.provider.Telephony.SMS_RECEIVED"

    .line 2139
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2140
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    .line 2141
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_4

    .line 2142
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 2143
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_4
    :goto_2
    return-void
.end method

.method protected registerPhoneStateListener(I)V
    .locals 3

    .line 413
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPhoneStateListener:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 420
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V

    .line 421
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getPhoneStateListener(I)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    move-result-object v2

    if-nez v2, :cond_1

    .line 422
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {p0, v1, v0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    return-void
.end method

.method public releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V
    .locals 0

    .line 850
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V

    return-void
.end method

.method public sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V
    .locals 10

    .line 2088
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2089
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    if-eqz v0, :cond_1

    .line 2090
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getTimerState(I)I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "], state["

    const-string/jumbo v3, "sendEmergencyCallTimerState: timer["

    if-ne v0, v1, :cond_0

    .line 2091
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is same, Just return"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2094
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setTimerState(II)V

    .line 2097
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;

    .line 2098
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v5

    .line 2099
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2101
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->handleEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;)V

    :cond_1
    return-void
.end method

.method public sendMobileCareEvent(IIILjava/lang/String;)V
    .locals 7

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 479
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v6

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 478
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->sendMobileCareEvent(IIILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public sendQualityStatisticsEvent()V
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->sendQualityStatisticsEvent()V

    return-void
.end method

.method public sendRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V
    .locals 0

    .line 865
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    return-void
.end method

.method public setDelayedDeregisterTimerRunning(IZ)V
    .locals 1

    .line 1965
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    aput-boolean p2, v0, p1

    .line 1966
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->updateCapabilities(I)V

    return-void
.end method

.method public setIsLteRetrying(IZ)V
    .locals 0

    .line 1948
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteRetrying:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public setRatChanged(IZ)V
    .locals 0

    .line 1311
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public setRttMode(I)V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 562
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRttMode(II)V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v1, v0, p1

    .line 569
    aput p2, v0, p1

    .line 572
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRttMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 573
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz p2, :cond_1

    .line 574
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v0, v0, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setRttMode(IZ)V

    goto :goto_1

    .line 576
    :cond_1
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setRttMode: RTT registration is skiped because the call session exist."

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget p2, p2, p1

    if-ne v1, p2, :cond_2

    .line 579
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "setRttMode: not updating sessions"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 582
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x30000016

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 583
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget p0, p0, p1

    invoke-interface {p2, p1, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setRttMode(II)V

    return-void
.end method

.method public setTtyMode(I)V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 522
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setTtyMode(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized setTtyMode(II)V
    .locals 4

    monitor-enter p0

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v1, v0, p1

    .line 528
    aput p2, v0, p1

    .line 530
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTtyMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v2, v2, p1

    invoke-interface {v0, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setTtyMode(II)V

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v0, v0, p1

    if-ne v1, v0, :cond_0

    .line 535
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "setTtyMode: not updating sessions"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    .line 539
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 542
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "when non-registered status, do not pass TTY Mode"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    .line 546
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 547
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 553
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x30000015

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setTtyMode(III)I

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->setTtyMode(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 558
    monitor-exit p0

    return-void

    .line 548
    :cond_3
    :goto_0
    :try_start_3
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setTtyMode: do not call setTtyMode() for non IMS TTY operator"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aput v1, p2, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startLocalRingBackTone(III)I
    .locals 5

    .line 775
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v0

    .line 776
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v1

    .line 778
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-lez v2, :cond_0

    .line 779
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "has Outgoing call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    goto :goto_0

    .line 781
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 782
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 783
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "has Alerting call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-ltz v0, :cond_2

    .line 786
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Use IMS RBT when WiFi Calling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startLocalRingBackTone(III)I

    move-result p0

    return p0

    .line 791
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Do Not Use IMS RBT when non WiFi Calling"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public stopLocalRingBackTone()I
    .locals 0

    .line 799
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopLocalRingBackTone()I

    move-result p0

    return p0
.end method

.method protected terminateMoWfcWhenWfcSettingOff(I)V
    .locals 2

    .line 1367
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1368
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 1369
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1370
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1371
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->terminateMoWfcWhenWfcSettingOff(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1342
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const-string v1, "]"

    const-string v2, " Feature: "

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "["

    if-eqz v0, :cond_3

    move v0, v4

    .line 1343
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 1344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v5, ", ["

    goto :goto_1

    :cond_0
    const-string v5, ""

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1345
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isEmergencyRegistered(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Emergency Registered - PhoneId <"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1348
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "phoneId <"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "> - Registered : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1351
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v7, v5, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1354
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isEmergencyRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Emergency Registered"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1357
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Registered: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1360
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    aget-wide v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_6
    return-object v5
.end method

.method public transfer(ILjava/lang/String;)V
    .locals 0

    .line 810
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->transfer(ILjava/lang/String;)V

    return-void
.end method

.method public triggerPsRedial(III)Z
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->triggerPsRedial(IIILcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method protected unRegisterPhoneStateListener(I)V
    .locals 2

    .line 440
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterPhoneStateListener:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterListener(I)V

    .line 443
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getPhoneStateListener(I)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 445
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method unregisterAllowedNetworkTypesListener(I)V
    .locals 3

    .line 996
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 998
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1000
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterAllowedNetworkTypesListener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") : TelephonyManager null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1003
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 1004
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    return-void
.end method

.method public updateCapabilities(I)V
    .locals 0

    .line 615
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->updateCapabilities(I)V

    return-void
.end method

.method public updateCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateEccUrn(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 874
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->updateCategoryList(I)Ljava/lang/String;

    move-result-object v0

    .line 876
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eccCategoryList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    .line 878
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    const-string v6, "/"

    .line 879
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 880
    aget-object v6, v5, v3

    .line 881
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 882
    array-length p2, v5

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    aget-object p2, v5, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v2

    .line 888
    :goto_1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 889
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isRequiredKorSpecificURN(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 890
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->convertEccCatToUrnSpecificKor(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 892
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->convertEccCatToUrn(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const-string/jumbo p0, "urn:service:sos"

    :goto_2
    return-object p0
.end method

.method public updateNrSaModeOnStart(II)V
    .locals 2

    .line 2205
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2206
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSupportVoWiFiDisable5GSAFromConfiguration(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2209
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    nop

    :cond_1
    :goto_0
    return-void
.end method
