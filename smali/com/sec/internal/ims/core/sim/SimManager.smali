.class public Lcom/sec/internal/ims/core/sim/SimManager;
.super Landroid/os/Handler;
.source "SimManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;,
        Lcom/sec/internal/ims/core/sim/SimManager$AuthRequest;
    }
.end annotation


# static fields
.field protected static final EVENT_IMSSWITCH_UPDATED:I = 0x7

.field protected static final EVENT_LOAD_MNOMAP:I = 0x8

.field protected static final EVENT_SIM_REFRESH:I = 0x3

.field protected static final EVENT_SIM_STATE_CHANGED:I = 0x1

.field protected static final EVENT_SOFTPHONE_AUTH_FAILED:I = 0x5

.field protected static final EVENT_UICC_CHANGED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SimManager"

.field private static final SMF_MNONAME_PROP:Ljava/lang/String; = "sys.smf.mnoname"

.field protected static final SOFTPHONE_OPERATOR_CODE:Ljava/lang/String; = "310999"

.field static final URI_UPDATE_GLOBAL:Landroid/net/Uri;

.field static final URI_UPDATE_MNO:Landroid/net/Uri;

.field private static final sInteractAcrossUsersFullPermission:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_USERS_FULL"


# instance fields
.field OMCNW_CODE:Ljava/lang/String;

.field OMC_CODE:Ljava/lang/String;

.field final mAkaEventReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mDevMno:Lcom/sec/internal/constants/Mno;

.field private final mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field final mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mHighestPriorityEhplmn:Ljava/lang/String;

.field protected mImsServiceSwitchObserver:Landroid/database/ContentObserver;

.field private mImsi:Ljava/lang/String;

.field mImsiFromImpi:Ljava/lang/String;

.field mIsCrashSimEvent:Z

.field protected mIsESim:Z

.field private mIsGtsAppInstalled:Z

.field private mIsOutBoundSIM:Z

.field private mIsRefresh:Z

.field protected mIsimLoaded:Z

.field mLabSimCard:Z

.field private mLastImsi:Ljava/lang/String;

.field mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

.field mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

.field mNetMno:Lcom/sec/internal/constants/Mno;

.field mOperatorFromImpi:Ljava/lang/String;

.field mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

.field mSimIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSimMnoName:Ljava/lang/String;

.field protected final mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mSimSlot:I

.field mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field protected mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

.field mSubscriptionId:I

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected final mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected notifySimReadyAlreadyDone:Z


# direct methods
.method public static synthetic $r8$lambda$71VhAAdPhIiARRTWbRVTxijVTec(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getDerivedImpi$3(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gc8Hlg9xBAtvGGI0VreMCSkv1C8(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getDerivedImpuFromMsisdn$1(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H8Rg0i136pPSerRKKh3mr0-dI-4(Lcom/sec/internal/ims/core/sim/SimManager;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getDerivedImpuFromMsisdn$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Mpu1vMeDKN2YSWU_68wxQyC0KCE(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getEfImpuList$5(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WN4EVO4dGghR_esVftVJHVY5Cng(Lcom/sec/internal/ims/core/sim/SimManager;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$dump$7([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZDuD_KUf88accvguY7VePUIrKg8(Landroid/content/ContentValues;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$onImsSwitchUpdated$0(Landroid/content/ContentValues;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m8sc1yIi1XfglWsqdvqtkJuPxcU(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getDerivedImpu$4(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v2PpflEYyTe5sQZ8DSONhZHur0w(Lcom/sec/internal/ims/core/sim/SimManager;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getImpuFromSim$6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.ims.settings/mno"

    .line 118
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_MNO:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.settings/global"

    .line 119
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_GLOBAL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;Lcom/sec/internal/helper/os/ITelephonyManager;)V
    .locals 3

    .line 236
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, -0x1

    .line 92
    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 95
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    .line 96
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 97
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    const-string v1, ""

    .line 98
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    .line 126
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 127
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    .line 130
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 131
    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 132
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 134
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    .line 135
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    .line 136
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 137
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 138
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 139
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    .line 140
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    .line 142
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 143
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 144
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 145
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 146
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 148
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    .line 152
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$1;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$2;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$3;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mAkaEventReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v1, 0x12c

    const-string v2, "SimManager"

    invoke-direct {v0, p2, p3, v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 239
    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    .line 240
    iput p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 241
    iput-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 243
    new-instance p2, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-direct {p2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    .line 245
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "subId: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", info: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p4, :cond_0

    .line 247
    invoke-virtual {p4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 248
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/core/sim/SimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    :cond_0
    const-string/jumbo p2, "ro.csc.sales_code"

    const-string/jumbo p3, "unknown"

    .line 252
    invoke-static {p2, p3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 254
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 255
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 258
    :cond_1
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p2}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 259
    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 260
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "OMC_CODE(create): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", mDevMno: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p5}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 261
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "OMCNW_CODE(create): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", mNetMno: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p5}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 263
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 264
    new-instance p2, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;

    invoke-direct {p2, p0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 265
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p3, p1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private isValidAkaResponse(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "2wQAAAAAAAA="

    .line 732
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x10000021

    if-eqz v0, :cond_0

    .line 733
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", failed to challenge"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1

    .line 735
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 736
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", empty response"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1
.end method

.method public static isValidImpu(Ljava/lang/String;)Z
    .locals 2

    .line 710
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 715
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid IMPU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/log/LogRedactor;->IMPU:Lcom/sec/internal/log/LogRedactor;

    invoke-virtual {v1, p0}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimManager"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$dump$7([Ljava/lang/String;)V
    .locals 4

    .line 1882
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMPUs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/log/LogRedactor;->IMPU:Lcom/sec/internal/log/LogRedactor;

    .line 1883
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/log/LogRedactor;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v1, "["

    const-string v2, "]"

    const-string v3, ", "

    .line 1884
    invoke-static {v3, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimManager"

    .line 1882
    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getDerivedImpi$3(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 1755
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->fetchDerivedImpi(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDerivedImpu$4(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 1777
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->fetchDerivedImpu(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDerivedImpuFromMsisdn$1(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 1728
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->fetchDerivedImpuFromMsisdn(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDerivedImpuFromMsisdn$2()Ljava/lang/String;
    .locals 3

    .line 1730
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDerivedImpi: operator is invalid. operator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SimManager"

    invoke-static {v1, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "111@example.com"

    return-object p0
.end method

.method private static synthetic lambda$getEfImpuList$5(Ljava/lang/String;)Z
    .locals 0

    .line 1786
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$getImpuFromSim$6()Ljava/lang/String;
    .locals 2

    .line 1793
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$onImsSwitchUpdated$0(Landroid/content/ContentValues;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 302
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private notifySimRefresh()V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private notifySimRemoved()V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method checkOutBoundSIM()Z
    .locals 3

    .line 530
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasNoSim()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SimManager"

    if-eqz v0, :cond_0

    .line 531
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "isOutboundSim, SIM not ready"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isLabSimCard()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 541
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isUnifiedSalesCodeInTSS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->includedSimByTSS(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 546
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getNetworkNames()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 536
    :cond_3
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "isOutboundSim, GCF mode, LabSim card/ Test Bed SIM inserted."

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public deRegisterSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1684
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1685
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deregisterForSimReady(Landroid/os/Handler;)V
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimRefresh(Landroid/os/Handler;)V
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimRemoved(Landroid/os/Handler;)V
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public dump()V
    .locals 6

    .line 1858
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1859
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1860
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1861
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimStatePrev: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1862
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1863
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsimLoaded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1864
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsOutBound: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1865
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsESim: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsESim:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v0, :cond_0

    .line 1868
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimDataAdaptor : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1870
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_1

    .line 1871
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    .line 1872
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPrimaryImei()Ljava/lang/String;

    move-result-object v1

    .line 1873
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMEI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/internal/log/LogRedactor;->IMEI:Lcom/sec/internal/log/LogRedactor;

    invoke-virtual {v5, v0}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(isPrimary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1873
    invoke-static {v2, v3, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1876
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1877
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSISDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/log/LogRedactor;->MSISDN:Lcom/sec/internal/log/LogRedactor;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1878
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/log/LogRedactor;->IMSI:Lcom/sec/internal/log/LogRedactor;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1879
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISIM DOMAIN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/log/LogRedactor;->DOMAIN:Lcom/sec/internal/log/LogRedactor;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1880
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMPI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/log/LogRedactor;->IMPI:Lcom/sec/internal/log/LogRedactor;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1881
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda7;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1886
    :cond_1
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1889
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1890
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->dump()V

    return-void
.end method

.method public getDerivedImpi()Ljava/lang/String;
    .locals 3

    .line 1741
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "getDerivedImpi:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1743
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 1744
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1748
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1754
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)Lcom/sec/internal/ims/core/sim/Plmn;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;)V

    .line 1755
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 1756
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1749
    :cond_2
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpi: IMSI is not found. Using [sip:111@example.com]"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "111@example.com"

    return-object p0
.end method

.method public getDerivedImpu()Ljava/lang/String;
    .locals 4

    .line 1764
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "getDerivedImpu:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1766
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 1767
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1771
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1776
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)Lcom/sec/internal/ims/core/sim/Plmn;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;)V

    .line 1777
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1778
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1772
    :cond_2
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpu: IMSI is not found."

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public getDerivedImpuFromMsisdn()Ljava/lang/String;
    .locals 3

    .line 1715
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "getDerivedImpuFromMsisdn:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 1718
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1721
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 1722
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1723
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpuFromMsisdn: msisdn is not found"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1727
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)Lcom/sec/internal/ims/core/sim/Plmn;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;)V

    .line 1728
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 1729
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDevMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1827
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public getEfImpuList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1783
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1784
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1785
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1783
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda4;-><init>()V

    .line 1786
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1787
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getEmergencyImpu()Ljava/lang/String;
    .locals 3

    .line 1799
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 1800
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1803
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getEfImpuList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getEmergencyImpu(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1804
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    if-nez v0, :cond_4

    .line 1807
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasNoSim()Z

    move-result v0

    const-string/jumbo v2, "sip:anonymous@anonymous.invalid"

    if-eqz v0, :cond_1

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 1809
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_2

    .line 1811
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1815
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 1818
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    .line 1657
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getGtsAppInstalled()Z
    .locals 0

    .line 1907
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    return p0
.end method

.method public getHighestPriorityEhplmn()Ljava/lang/String;
    .locals 0

    .line 1607
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    return-object p0
.end method

.method getISimDataValidity()I
    .locals 8

    .line 673
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v1

    .line 675
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-static {v2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "isIsimDataValid: "

    const-string v5, "SimManager"

    const/4 v6, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v3, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getImpuFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 687
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v3

    or-int/2addr v6, v3

    .line 688
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v3, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 679
    :cond_1
    :goto_0
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_NOT_EXISTS:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v3

    or-int/2addr v6, v3

    .line 680
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v3, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 692
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPI_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v2

    or-int/2addr v6, v2

    .line 694
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 697
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 698
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "Allow empty EF_HOMEDOMAIN only when the EHPLMN is available"

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_2

    .line 701
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->HOME_DOMAIN_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v1

    or-int/2addr v6, v1

    .line 702
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    :goto_2
    return v6
.end method

.method public getImpi()Ljava/lang/String;
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImpuFromSim()Ljava/lang/String;
    .locals 2

    .line 1792
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getEfImpuList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getImpuFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 1793
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 2

    .line 1647
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1649
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1650
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    .line 1652
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method public getImsiFromImpi()Ljava/lang/String;
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1665
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    return-object p0
.end method

.method public getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 723
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isSimLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 728
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "SimManager"

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 746
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 751
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getIsimAuthentication calling - AppType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 753
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 755
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v5, 0x2

    .line 756
    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x10

    invoke-static {v5, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    move v6, v7

    move v5, v8

    goto :goto_0

    .line 759
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",REQ ISIM AUTH"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v5, 0x10000020

    invoke-static {v5, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 760
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 761
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    const/16 v6, 0x81

    invoke-interface {v2, v5, p2, v6, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 763
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "result: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isATTMexico()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 769
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidAkaResponse(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 770
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIsimAuthentication result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const-string p0, "mGI="

    return-object p0

    .line 776
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "null"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_2

    .line 783
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",LEN:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x10000021

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 788
    :try_start_0
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    new-instance p2, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/2addr v0, v3

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 795
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultBytes.length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 796
    :goto_1
    array-length p0, p1

    if-ge v4, p0, :cond_5

    .line 798
    aget-byte p0, p1, v4

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    const-string v0, "0123456789abcdef"

    .line 799
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 800
    aget-byte p0, p1, v4

    and-int/lit8 p0, p0, 0xf

    .line 801
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 803
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decoded result : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p1

    .line 790
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to decode the AKA RESPONSE - retry as MAC ERROR"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "9862"

    return-object p0

    .line 777
    :cond_6
    :goto_2
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string p2, "getIccAuthentication failed"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 778
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 779
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateEmergencyTaskByAuthFailure(I)V

    :cond_7
    return-object v0

    .line 747
    :cond_8
    :goto_3
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong parameter - AppType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " nonce : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 0

    .line 1636
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 0

    .line 1641
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMnoFromNetworkPlmn(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1848
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoNamesFromNetworkPlmn(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const-string p1, "DEFAULT"

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method public getMnoInfo()Landroid/content/ContentValues;
    .locals 1

    .line 1899
    new-instance v0, Landroid/content/ContentValues;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getAll()Landroid/content/ContentValues;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    return-object v0
.end method

.method getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1912
    sget-char p0, Lcom/sec/internal/constants/Mno;->GC_DELIMITER:C

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    .line 1914
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1832
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public getNetworkNames()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v4

    .line 552
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 553
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v8, v1

    .line 559
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperatorFromImpi()Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsiFromImpi()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 563
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v0

    move-object v3, v1

    .line 567
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 569
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 570
    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGid2(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 569
    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/util/CscParser;->getNetworkNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimCountryIsoForSubId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1843
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method public getSimMnoName()Ljava/lang/String;
    .locals 0

    .line 1853
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    return-object p0
.end method

.method getSimMobilityType(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;)I"
        }
    .end annotation

    .line 1933
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 1934
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 1937
    :cond_1
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityForRcs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1939
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1940
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    const/4 v0, 0x2

    :cond_6
    :goto_1
    return v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .line 617
    invoke-static {}, Lcom/sec/internal/constants/Mno;->getMockOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 623
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "310999"

    return-object p0

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimOperator: value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getSimOperatorFromImpi()Ljava/lang/String;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 639
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    return-object p0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 0

    .line 1695
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimSlotCount()I
    .locals 0

    .line 1589
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method public getSimSlotIndex()I
    .locals 0

    .line 1602
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    return p0
.end method

.method public getSimState()I
    .locals 2

    .line 1700
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_1

    .line 1701
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1702
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result p0

    return p0

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotIndex()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSimpleEventLog()Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    .line 1894
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method public getSubscriptionId()I
    .locals 1

    .line 1594
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    if-gez v0, :cond_0

    .line 1595
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1597
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1552
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1554
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1573
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    if-nez p1, :cond_6

    .line 1574
    new-instance p1, Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/core/sim/MnoMap;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    goto :goto_0

    .line 1579
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onImsSwitchUpdated(I)V

    .line 1580
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateGlobalSetting(I)V

    goto :goto_0

    .line 1569
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSoftphoneAuthFailed()V

    goto :goto_0

    .line 1565
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimRefresh()V

    goto :goto_0

    .line 1561
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifyUiccChanged()V

    goto :goto_0

    .line 1556
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimStateChange(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimStateChanged()V

    :cond_6
    :goto_0
    return-void
.end method

.method handleSimStateChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1360
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isSimAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SimManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 1361
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v4, "handleSimChange: SIM is ready."

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1363
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsiFromImpi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    goto :goto_0

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    .line 1370
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1371
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v4

    .line 1373
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iget-boolean v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 1374
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {v5, v6, p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->getEventType(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;ZZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "EVTT"

    .line 1373
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1375
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "SCID"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1376
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1377
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v5, 0x10

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v4, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v4, "GID1"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "ISIM"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1380
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 1381
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p1, v5, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "VLTS"

    .line 1380
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1382
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    .line 1383
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p1, v4, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "VILS"

    .line 1382
    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1388
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isGBASupported()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1389
    sget-object p1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->GBA_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->getValue()I

    move-result p1

    or-int/2addr p1, v3

    goto :goto_1

    :cond_2
    move p1, v3

    .line 1393
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->hasValidMsisdn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1394
    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->MSISDN_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->getValue()I

    move-result v4

    or-int/2addr p1, v4

    .line 1395
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "Invalid MSISDN"

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-lez p1, :cond_4

    const-string v5, "SMVL"

    .line 1400
    invoke-static {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->intToHexStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    :cond_4
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-eqz p1, :cond_5

    .line 1405
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getISimDataValidity()I

    move-result p1

    if-lez p1, :cond_5

    const-string v5, "ISVL"

    .line 1407
    invoke-static {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->intToHexStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "block_regi_on_invalid_isim"

    invoke-static {v5, v6, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isEsim()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1410
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "onSimStateChange: invalid ISIM!"

    invoke-static {v2, v1, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1411
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    .line 1412
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "INVALID_FIELD"

    invoke-virtual {v1, v2, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",INVLD ISIM,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x10000005

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1418
    :cond_5
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v2, "SIMI"

    invoke-static {p1, v1, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1421
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 1422
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz v4, :cond_8

    .line 1425
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    goto :goto_3

    .line 1427
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, p2, :cond_8

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimAppLoaded()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1429
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz p1, :cond_7

    .line 1430
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo p2, "send simstate, isim loaded"

    invoke-static {v2, p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1431
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    const-string p1, "ISIM_LOADED"

    .line 1432
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_7
    const-string p1, "DELAYED_ISIM_LOAD"

    .line 1436
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    :goto_3
    return-void
.end method

.method handleSubscriptionId()Z
    .locals 5

    .line 947
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    const-string v2, "SimManager"

    if-nez v0, :cond_0

    .line 950
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "SubscriptionManager is null, should not happen"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 954
    :cond_0
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 956
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v4, "onSimStateChange:[LOADED] subInfo is not created yet. retry in 1 sec."

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",NO SUBINFO"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x10000002

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 959
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    :cond_1
    const-string v0, "LOADED"

    .line 961
    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1

    .line 965
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->notifySubscriptionIdChanged(Landroid/telephony/SubscriptionInfo;)V

    .line 966
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    return v3
.end method

.method handleVsim(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 935
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 936
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "Enable virtual SIM"

    const-string v1, "SimManager"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 937
    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 p2, 0x1

    .line 938
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 939
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "VSIM LOADED"

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "LOADED"

    .line 941
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 942
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionId()Z

    :cond_1
    :goto_0
    return-void
.end method

.method handle_Delayed_IsimLoaded()Z
    .locals 3

    .line 1190
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "ISIM_LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1193
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method handle_IsimLoaded()Z
    .locals 4

    .line 1199
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "ISIM_LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1200
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1202
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_0

    .line 1204
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move v0, v1

    .line 1207
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    .line 1209
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "fix for exceptional case : LOADED notified before ISIM_LOADED"

    const-string v3, "SimManager"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v1

    .line 1213
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    return v0
.end method

.method handle_Loaded(Ljava/lang/String;)Z
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 972
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOADED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "LOADED"

    .line 973
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 975
    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 976
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v5

    if-nez v5, :cond_0

    .line 977
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v2

    .line 981
    :cond_0
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v2

    :cond_1
    if-eqz v4, :cond_21

    .line 986
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidOperator(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, 0x3e8

    const-string v8, "SimManager"

    const/4 v9, 0x0

    if-nez v5, :cond_2

    .line 987
    iget v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "onSimStateChange: [LOADED] but operator is invalid. retry in 1 sec."

    invoke-static {v8, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 989
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",INVLD OP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x10000001

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 990
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 991
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v9

    .line 995
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionId()Z

    move-result v5

    if-nez v5, :cond_3

    return v9

    .line 999
    :cond_3
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v10

    invoke-interface {v5, v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 1000
    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v10

    .line 1001
    iget-object v11, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v11

    .line 1002
    iget-object v12, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v12

    .line 1003
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGid2(I)Ljava/lang/String;

    move-result-object v15

    .line 1005
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imsi:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sec/internal/log/LogRedactor;->IMSI:Lcom/sec/internal/log/LogRedactor;

    invoke-virtual {v6, v5}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " gid1:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " gid2:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " impi:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sec/internal/log/LogRedactor;->IMPI:Lcom/sec/internal/log/LogRedactor;

    .line 1006
    invoke-virtual {v6, v10}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " spname:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1005
    invoke-virtual {v13, v14, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1007
    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImsi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1008
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v4, "onSimStateChange: [LOADED] but imsi is invalid. retry in 1 sec."

    invoke-static {v8, v1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",INVLD IMSI,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_4

    .line 1010
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_4
    const-string v4, "null"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x10000003

    .line 1009
    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1012
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 1013
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    return v0

    :cond_5
    const-string/jumbo v3, "ro.csc.sales_code"

    const-string/jumbo v6, "unknown"

    .line 1018
    invoke-static {v3, v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1020
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1021
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1023
    :cond_6
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMC_CODE(loaded): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mDevMno: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1025
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 1026
    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 1027
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMCNW_CODE(loaded): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mNetMno: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1029
    invoke-static {}, Lcom/sec/internal/helper/os/ImsCscFeature;->getInstance()Lcom/sec/internal/helper/os/ImsCscFeature;

    move-result-object v3

    .line 1035
    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v6}, Lcom/sec/internal/helper/os/ImsCscFeature;->clear(I)V

    const-string v3, "00101"

    .line 1037
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "CPW"

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1038
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "(CPW) & 00101 sim card, Enable GCF mode"

    invoke-static {v8, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1039
    invoke-static {v2}, Lcom/sec/internal/helper/os/DeviceUtil;->setGcfMode(Z)V

    :cond_7
    const-string v3, ""

    .line 1042
    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    .line 1044
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1045
    sget-object v3, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    const/4 v6, 0x0

    const/16 v19, 0x0

    goto/16 :goto_6

    .line 1047
    :cond_8
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    if-nez v3, :cond_9

    .line 1048
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "mnomap is empty"

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1049
    new-instance v3, Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-direct {v3, v6, v7}, Lcom/sec/internal/ims/core/sim/MnoMap;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    :cond_9
    if-eqz v10, :cond_c

    .line 1052
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1053
    invoke-static {v10}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->extractMnoFromImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1055
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1056
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->extractImsiFromImpi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_a
    move-object v6, v5

    .line 1058
    :goto_1
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    move-object v14, v3

    move-object v7, v15

    move-object v15, v6

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1059
    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/core/sim/SimManager;->getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v10

    .line 1060
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MnoNameFromImpi: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SIM Mno: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1061
    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isDish()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1062
    :cond_b
    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    .line 1063
    iput-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    move-object v1, v3

    move-object v5, v6

    goto :goto_2

    :cond_c
    move-object v7, v15

    .line 1067
    :cond_d
    :goto_2
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    move-object v14, v1

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1068
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 1069
    invoke-interface {v7, v9}, Lcom/sec/internal/helper/os/ITelephonyManager;->getRilSimOperator(I)Ljava/lang/String;

    move-result-object v7

    .line 1068
    invoke-virtual {v3, v2, v1, v6, v7}, Lcom/sec/internal/ims/core/sim/MnoMap;->changeMnoNameByIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1071
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/sim/MnoMap;->isGcBlockListContains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->isMnoHasGcBlockExtension(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    .line 1072
    :goto_3
    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isGlobalGcEnabled: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1073
    sget-object v6, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v3, 0x0

    .line 1077
    :cond_f
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    const-string v6, "LABSIM"

    .line 1079
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1080
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1081
    iput-boolean v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    const/4 v3, 0x0

    goto :goto_4

    .line 1084
    :cond_10
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1085
    iput-boolean v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    .line 1090
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v6, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v6, :cond_12

    const-string v2, "SUP"

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1091
    :cond_11
    iget v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "With SUP CSC or GtsAppInstalled, use GCF profile for GTS testing."

    invoke-static {v8, v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1092
    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x1

    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1095
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v6, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v6, :cond_13

    const-string v2, "DEFAULT"

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1096
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "handle_Loaded: Mno.GENERIC Update Name, Country, Region"

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1097
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->updateGenerictMno(Ljava/lang/String;)V

    .line 1098
    sget-object v2, Lcom/sec/internal/constants/Mno;->GENERIC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    goto :goto_5

    :cond_13
    const/4 v6, 0x0

    :goto_5
    move/from16 v19, v3

    .line 1102
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sys.smf.mnoname"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|LOADED"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM PLMN: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mSimMno: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1105
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1108
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1110
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "hassim"

    .line 1111
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "globalgcenabled"

    .line 1112
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "mnoname"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "mvnoname"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imsi"

    .line 1115
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v3, v5, v7, v9, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->updateCommonHeader(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->checkOutBoundSIM()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    .line 1124
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1, v3, v5}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1125
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMobilityType(Ljava/util/List;)I

    move-result v3

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->GENERIC:Lcom/sec/internal/constants/Mno;

    const/4 v9, 0x4

    if-ne v5, v7, :cond_15

    :cond_14
    :goto_7
    move v6, v9

    goto/16 :goto_a

    .line 1129
    :cond_15
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKDIMhs()Z

    move-result v5

    const/4 v7, 0x5

    if-nez v5, :cond_1e

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->isCctChaCbrsMsoSim(I)Z

    move-result v5

    if-eqz v5, :cond_16

    goto/16 :goto_8

    :cond_16
    if-lez v3, :cond_1b

    const-string/jumbo v5, "simMoType"

    .line 1134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_17

    if-ne v3, v5, :cond_18

    .line 1137
    :cond_17
    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "isSimMobilityForVoLTE true"

    invoke-static {v8, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1138
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v6, v7}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getSimMobilityImsSwitchSetting(Landroid/content/Context;I)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_18
    const/4 v6, 0x2

    if-eq v3, v6, :cond_19

    if-ne v3, v5, :cond_1a

    .line 1142
    :cond_19
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "isSimMobilityForRcs true"

    invoke-static {v8, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1143
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v3, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getSimMobilityRcsSettings(ILjava/util/List;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1144
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_1a
    move v6, v5

    goto :goto_a

    .line 1146
    :cond_1b
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "XAS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1151
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "for XAS use internal IMSSetting"

    invoke-static {v8, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1153
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getXasImsSwitchSetting()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_7

    .line 1154
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->useImsSwitch()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1155
    iget-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    if-eqz v1, :cond_14

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1157
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "GTS installed"

    invoke-static {v8, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_a

    .line 1165
    :cond_1d
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "Turned off all switches for OutBoundSIM && not SimMo"

    invoke-virtual {v1, v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_9

    .line 1130
    :cond_1e
    :goto_8
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "Turning off all switches for Non-Ims SIM"

    invoke-virtual {v1, v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    :goto_9
    move v6, v7

    :cond_1f
    :goto_a
    const-string v1, "imsSwitchType"

    .line 1173
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1175
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    if-ne v6, v9, :cond_20

    .line 1177
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->onImsSwitchUpdated(I)V

    .line 1180
    :cond_20
    iget-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz v1, :cond_21

    .line 1181
    iget v0, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "handle_Loaded: need to update ADS again when imsservice restarted"

    invoke-static {v8, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1182
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->updateAdsSlot()V

    :cond_21
    return v4
.end method

.method handle_Locked(Ljava/lang/String;)V
    .locals 5

    .line 1328
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v0

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "unknown"

    .line 1331
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1332
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1335
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "SIM LOCKED"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1336
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMC_CODE(locked): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mDevMno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1338
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.smf.mnoname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1345
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hassim"

    .line 1346
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1347
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mnoname"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mvnoname"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "imsSwitchType"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1351
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    .line 1352
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1355
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method handle_NotReadyUnknown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "LOADED"

    const/4 v1, 0x1

    .line 1220
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1222
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "UNKNOWN"

    .line 1228
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p2, v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->needImsUpOnUnknownState(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string/jumbo p2, "ro.csc.sales_code"

    const-string/jumbo v0, "unknown"

    .line 1229
    invoke-static {p2, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1230
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 1231
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1232
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1235
    :cond_1
    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1236
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "SIM UNKNOWN"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1237
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMC_CODE(unknown): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDevMno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1239
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sys.smf.mnoname"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1245
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "hassim"

    .line 1246
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1247
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnoname"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mvnoname"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imsSwitchType"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1251
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    .line 1252
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1223
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimNotReady()V

    return-void
.end method

.method handle_absent(Ljava/lang/String;Z)V
    .locals 11

    .line 1257
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v0

    .line 1259
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v3, "DRPT"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->requestToSendStoredLog(ILandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "LOADED"

    const/4 v2, 0x1

    .line 1262
    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1263
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->resetCarrierFeatureHash()V

    .line 1264
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v4, "imsSwitchType"

    const-string v5, "hassim"

    const/4 v6, 0x0

    .line 1278
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "mvnoname"

    const-string v9, "mnoname"

    if-eq v1, v3, :cond_7

    .line 1264
    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v1, v3, :cond_0

    goto/16 :goto_1

    .line 1286
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "SIM ABSENT"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1287
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1288
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v0, :cond_1

    .line 1290
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo p1, "ro.csc.sales_code"

    const-string/jumbo v0, "unknown"

    .line 1294
    invoke-static {p1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1295
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1296
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1298
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMC_CODE(absent): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDevMno: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1300
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 1301
    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 1302
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OMCNW_CODE(absent): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mNetMno: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1304
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sys.smf.mnoname"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1311
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1312
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1317
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 1318
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result v0

    if-eqz p2, :cond_3

    .line 1319
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    if-ne v0, p2, :cond_6

    .line 1320
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1322
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result p2

    if-ne p2, v2, :cond_6

    .line 1323
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    :cond_6
    :goto_0
    return-void

    .line 1266
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "SIM REMOVED"

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1267
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimRemoved()V

    .line 1269
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1, v9}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1271
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1273
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 1274
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 1275
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1276
    invoke-virtual {p2, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1, v8}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1280
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    return-void
.end method

.method public hasIsim()Z
    .locals 6

    .line 575
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getRilSimOperator(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ro.boot.hardware"

    const-string v3, ""

    .line 577
    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 578
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const-string v4, "SimManager"

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    const-string v3, "SKCTN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SKCTD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 579
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "qcom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    :cond_1
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "hasIsim: watch data SIM. treat it as USIM(by SKT operator)"

    invoke-static {v4, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    .line 583
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->SAFARICOM_KENYA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 584
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "hasIsim safariCom_kenya : false"

    invoke-static {v4, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    .line 588
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v0

    .line 589
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasIsim: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 591
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v2, "use_usim_on_invalid_isim"

    invoke-static {v1, v2, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isEsim()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    if-eqz v0, :cond_6

    .line 592
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v5, 0x1

    :cond_6
    move v0, v5

    :cond_7
    return v0
.end method

.method public hasNoSim()Z
    .locals 1

    .line 508
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasVsim()Z
    .locals 0

    .line 601
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p0

    return p0
.end method

.method public initSequentially()V
    .locals 8

    .line 348
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 349
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 350
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 351
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.action.SIM_ICCID_CHANGED"

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.intent.isim_refresh"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ISIM_LOADED"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.isim_refresh_fail_recovery"

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 362
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 364
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_BACKGROUND"

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_FOREGROUND"

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    .line 376
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    .line 377
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mAkaEventReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/sec/ims/extensions/ContextExt;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 381
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "init mno map"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x8

    .line 382
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected initializeSimState()V
    .locals 6

    const/4 v0, 0x0

    .line 1441
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1442
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->readSimStateProperty(ILcom/sec/internal/helper/os/ITelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 1443
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeSimState (gsm.sim.state) : =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1444
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "LOADED"

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v5

    goto :goto_1

    :sswitch_0
    const-string v0, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1448
    :pswitch_0
    invoke-virtual {p0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1453
    :pswitch_1
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1454
    invoke-virtual {p0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_3
        -0x79d6d8f6 -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x72b3d739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isEsim()Z
    .locals 0

    .line 1925
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsESim:Z

    return p0
.end method

.method public isGBASupported()Z
    .locals 3

    .line 656
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v0

    .line 662
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGbaSupported ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method isISimAppLoaded()Z
    .locals 5

    .line 517
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isISimAppLoaded : simstate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subscriptionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isISimAppPresent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 518
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getboolean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "block_regi_on_invalid_isim"

    const/4 v4, 0x1

    .line 519
    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isISimDataValid() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    .line 517
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 522
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :cond_1
    :goto_0
    return v4

    :cond_2
    return v2
.end method

.method public isISimDataValid()Z
    .locals 0

    .line 668
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getISimDataValidity()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLabSimCard()Z
    .locals 3

    .line 644
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLabSimCard: state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] isLabSim ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isMnoHasGcBlockExtension(Ljava/lang/String;)Z
    .locals 0

    .line 1920
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->GC_BLOCK_EXTENSION:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isOutBoundSIM()Z
    .locals 3

    .line 650
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOutBoundSIM: state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] isOutBoundSIM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimAvailable()Z
    .locals 3

    .line 502
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsimLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasIsim():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimLoaded()Z
    .locals 1

    .line 1626
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isValidImsi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 883
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isValidOperator(Ljava/lang/String;)Z
    .locals 0

    .line 879
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x5

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method notifyMnoChanged()V
    .locals 4

    .line 1494
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_MNO:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1495
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMnoChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimManager"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1496
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getAll()Landroid/content/ContentValues;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method notifySimReady(Ljava/lang/String;)V
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySimReady: state ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",NOTI SIM EVT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1000001f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 414
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 416
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 417
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "SimManager"

    .line 418
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v4, "send ACTION_IMS_ON_SIMLOADED"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 422
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 424
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v1, :cond_3

    .line 427
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SimManager"

    .line 428
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM READY by needHandleLoadedAgain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 425
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 433
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter p1

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;

    .line 435
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v2, v3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;->onReady(IZ)V

    goto :goto_3

    .line 437
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method notifySimStateChanged()V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method notifyUiccChanged()V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public onImsSwitchUpdated(I)V
    .locals 8

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 294
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "enableIms"

    const-string v2, "enableServiceVowifi"

    const-string v3, "enableServiceSmsip"

    const-string v4, "enableServiceVilte"

    const-string v5, "enableServiceVolte"

    const-string v6, "enableServiceRcs"

    const-string v7, "enableServiceRcschat"

    .line 295
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/ContentValues;Landroid/content/SharedPreferences;)V

    .line 301
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 305
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->update(Landroid/content/ContentValues;)V

    .line 307
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", onImsSwitchUpdated : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void
.end method

.method protected onSimNotReady()V
    .locals 3

    .line 1538
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "onSimNotReady"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1539
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1540
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 v0, 0x0

    .line 1541
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1542
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v1, -0x1

    .line 1543
    iput v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1544
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsESim:Z

    .line 1546
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRemoved()V

    .line 1547
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method onSimRefresh()V
    .locals 3

    .line 1504
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "onSimRefresh"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SIM REFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1000000f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1507
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 v0, 0x0

    .line 1508
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1509
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v0, -0x1

    .line 1510
    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1515
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1516
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 1517
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRefresh()V

    .line 1520
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method protected onSimRemoved()V
    .locals 3

    .line 1528
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "onSimRemoved:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1529
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1530
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v0, -0x1

    .line 1531
    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1533
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRemoved()V

    .line 1534
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method protected onSimStateChange(Ljava/lang/String;)V
    .locals 7

    .line 892
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v1

    .line 896
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSimStateChange: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], operator: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 899
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 900
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPrimaryImei()Ljava/lang/String;

    move-result-object v3

    .line 901
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",EVT:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sec/internal/log/LogRedactor;->IMEI:Lcom/sec/internal/log/LogRedactor;

    .line 902
    invoke-virtual {v6, v2}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 901
    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->handleVsim(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "LOADED"

    .line 910
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 911
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "mnoname"

    invoke-static {p1, v1, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 912
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Loaded(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const-string v2, "DELAYED_ISIM_LOAD"

    .line 913
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 914
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Delayed_IsimLoaded()Z

    move-result p1

    goto :goto_0

    :cond_2
    const-string v2, "ISIM_LOADED"

    .line 915
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 916
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_IsimLoaded()Z

    move-result p1

    goto :goto_0

    :cond_3
    const-string v2, "NOT_READY"

    .line 917
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "UNKNOWN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "ABSENT"

    .line 920
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 921
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_absent(Ljava/lang/String;Z)V

    return-void

    :cond_5
    const-string v1, "LOCKED"

    .line 923
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 924
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Locked(Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 929
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSimStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 918
    :cond_8
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_NotReadyUnknown(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method onSoftphoneAuthDone(Ljava/lang/String;)V
    .locals 3

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aka result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",LEN:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 843
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x10000031

    .line 842
    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 844
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 846
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 847
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 851
    :cond_1
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "aka failed"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 852
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method onSoftphoneAuthFailed()V
    .locals 3

    .line 857
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "onSoftphoneAuthFailed"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 859
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    const/16 v0, 0x2e

    iput v0, p0, Landroid/os/Message;->what:I

    .line 860
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    .line 396
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "Register for sim ready"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 397
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 398
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 400
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 401
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->needImsUpOnUnknownState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 402
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 471
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 488
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForUiccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 445
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
    .locals 2

    .line 1670
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1671
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1672
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v1, :cond_2

    .line 1677
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;->onReady(IZ)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 1674
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestIsimAuthentication(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 810
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 812
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 813
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 819
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 821
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 822
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestSoftphoneAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 2

    .line 828
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    .line 829
    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestSoftphoneAuthentication, id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 830
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",REQ AUTH"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const v0, 0x10000030

    invoke-static {v0, p3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 832
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.sec.imsservice.REQUEST_AKA_CHALLENGE"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "nonce"

    .line 834
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "impi"

    .line 835
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "id"

    .line 836
    invoke-virtual {p3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p3, p1}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method protected setGtsAppInstalled(Z)V
    .locals 0

    .line 1903
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    return-void
.end method

.method public setIsimLoaded()V
    .locals 1

    const-string v0, "ISIM_LOADED"

    .line 513
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimStateChange(Ljava/lang/String;)V

    return-void
.end method

.method setSimMno(Lcom/sec/internal/constants/Mno;Z)V
    .locals 1

    .line 1462
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0, p1}, Lcom/sec/internal/helper/SimUtil;->setSimMno(ILcom/sec/internal/constants/Mno;)V

    if-eqz p2, :cond_0

    .line 1464
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSimRefreshed()V
    .locals 2

    .line 606
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v0, "setSimRefreshed:"

    const-string v1, "SimManager"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    monitor-enter p0

    .line 1612
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SimManager"

    .line 1613
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSubscriptionInfo : mSubscriptionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSimSlot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1613
    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1615
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1616
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 1617
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getEhplmn(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    const-string v0, "SimManager"

    .line 1618
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored EHPLMN ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1620
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsESim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method updateGlobalSetting(I)V
    .locals 7

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v1, "imsSwitchType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v1, "enableIms"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 317
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v3, "enableServiceVolte"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 318
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v4, "enableServiceVowifi"

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_1

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    :cond_1
    const-string v0, "SimManager"

    const-string/jumbo v1, "updateGlobalSetting: enableIms or enableServiceVolte, enableServiceVowifi : disable"

    .line 321
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 324
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isJPNOmcCode()Z

    move-result v1

    const-string v2, "CS"

    const/4 v3, 0x3

    const-string/jumbo v4, "voice_domain_pref_eutran"

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v6, "updateGlobalSetting: set voice_domain_eutran ps preferred for Data only devices"

    invoke-virtual {v1, v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 327
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    const-string v5, "emergency_domain_setting"

    if-eqz v1, :cond_3

    .line 330
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 329
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "PS"

    .line 331
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "ss_domain_setting"

    const-string v3, "CS_ALWAYS"

    .line 337
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ussd_domain_setting"

    .line 338
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_GLOBAL:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 341
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method updateMno(Landroid/content/ContentValues;)V
    .locals 6

    .line 1469
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v1, "updateMno:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1470
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "phoneId"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "imsi"

    .line 1474
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 1475
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "imsSwitchType"

    .line 1478
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    .line 1479
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1481
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->update(Landroid/content/ContentValues;)V

    .line 1483
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v2, 0x1000000d

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1484
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-eqz v0, :cond_1

    .line 1486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    .line 1487
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getAll()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->convertMnoInfoToString(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x1000000e

    .line 1486
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1490
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifyMnoChanged()V

    return-void
.end method

.method updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 868
    :cond_0
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 869
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 871
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq p1, v0, :cond_1

    .line 872
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method useImsSwitch()Z
    .locals 2

    .line 887
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    const-string v0, "GCF"

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SUP"

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
