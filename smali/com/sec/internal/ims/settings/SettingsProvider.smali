.class public Lcom/sec/internal/ims/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/SettingsProvider$ImpuRecordTable;
    }
.end annotation


# static fields
.field private static final ACTION_CARRIER_CHANGED:Ljava/lang/String; = "com.samsung.carrier.action.CARRIER_CHANGED"

.field private static final CONFIG_DB_RESET:I = 0x1c

.field private static final CSC_PROFILE:I = 0x7

.field private static final CSC_PROFILE_ID:I = 0x8

.field private static final CSC_SETTING:I = 0x9

.field private static final CSC_SETTING_ID:I = 0xa

.field private static final DEBUG_CONFIG:I = 0x15

.field private static final DM_ACCESS:I = 0x18

.field private static final DM_CONFIG_URI:Ljava/lang/String; = "com.samsung.rcs.dmconfigurationprovider"

.field private static final DNS_BLOCK:I = 0x14

.field private static final DOWNLOAD_CONFIG:I = 0x1d

.field private static final DT_LOC_USER_CONSENT:I = 0x27

.field private static final EPDG_SYSTEM_SETTINGS:I = 0x26

.field private static final EXTRA_CARRIER_GROUP_CHANGED:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_GROUP_CHANGED"

.field private static final EXTRA_CARRIER_PHONEID:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_PHONE_ID"

.field private static final EXTRA_CARRIER_STATE:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_STATE"

.field private static final GCF_CONFIG_NAME:I = 0x13

.field private static final GCF_INIT_RAT:I = 0x23

.field private static final IDC_CONFIG:I = 0x28

.field private static final IMPU:I = 0x11

.field private static final IMS_GLOBAL:I = 0x4

.field private static final IMS_GLOBAL_ID:I = 0x5

.field private static final IMS_GLOBAL_RESET:I = 0x6

.field private static final IMS_PROFILE:I = 0x1

.field private static final IMS_PROFILE_ID:I = 0x2

.field private static final IMS_PROFILE_RESET:I = 0x3

.field private static final IMS_SMK_SECRET_KEY:I = 0x21

.field private static final IMS_SWITCH:I = 0xb

.field private static final IMS_SWITCH_NAME:I = 0xd

.field private static final IMS_SWITCH_RESET:I = 0xc

.field private static final IMS_USER_SETTING:I = 0x24

.field private static final LOG_CALL:Ljava/lang/String; = "Call"

.field private static final LOG_DELETE:Ljava/lang/String; = "Delete"

.field private static final LOG_INSERT:Ljava/lang/String; = "Insert"

.field private static final LOG_QUERY:Ljava/lang/String; = "Query"

.field public static final LOG_TAG:Ljava/lang/String; = "ImsSettingsProvider"

.field private static final LOG_UPDATE:Ljava/lang/String; = "Update"

.field private static final MNO:I = 0x17

.field private static final NV_LIST:I = 0x1a

.field private static final NV_STORAGE:I = 0xf

.field private static final PROFILE_MATCHER:I = 0x0

.field private static final RCS_VER:I = 0x1f

.field private static final RCS_VERSION:Ljava/lang/String; = "6.0.3"

.field private static final READ_ALL_OMADM:I = 0x19

.field private static final RESET_DOWNLOAD_CONFIG:I = 0x1e

.field private static final SELF_PROVISIONING:I = 0x12

.field private static final SELF_WIFICALLINGACTIVATION:I = 0x16

.field private static final SIM_DATA:I = 0xe

.field private static final SIM_MOBILITY:I = 0x20

.field private static final SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final SMK_UPDATED_INFO:I = 0x22

.field private static final SMS_SETTING:I = 0x25

.field private static final USER_CONFIG:I = 0x10

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mCarrierFeatureReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceConfigManager:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/settings/DeviceConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$6KgPr_OJGyQcnCt3fEwNHThU6KE(Lcom/sec/internal/ims/settings/SettingsProvider;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetForJibe(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TGgjHrhy_WeQRw6LsI9dyx6ighY(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->lambda$reset$1(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$web5QA6BT7SdS0G3n00U-9bJb1o(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->lambda$resetForJibe$0(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/settings/SettingsProvider;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/SettingsProvider;Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/settings/SettingsProvider;->doCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSavedCarrierId(Lcom/sec/internal/ims/settings/SettingsProvider;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedCarrierId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSavedSwVersion(Lcom/sec/internal/ims/settings/SettingsProvider;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedSwVersion(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetStoredConfig(Lcom/sec/internal/ims/settings/SettingsProvider;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateOtherVoLTEIconSetting(Lcom/sec/internal/ims/settings/SettingsProvider;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->updateOtherVoLTEIconSetting(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 132
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "match_profile_id"

    const/4 v2, 0x0

    const-string v3, "com.sec.ims.settings"

    .line 134
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "profile"

    const/4 v2, 0x1

    .line 136
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "profile/#"

    const/4 v2, 0x2

    .line 137
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "profile/reset"

    const/4 v2, 0x3

    .line 138
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "global"

    const/4 v2, 0x4

    .line 139
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "global/#"

    const/4 v2, 0x5

    .line 140
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "global/reset"

    const/4 v2, 0x6

    .line 141
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/reset"

    const/16 v2, 0x1c

    .line 142
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "cscprofile"

    const/4 v2, 0x7

    .line 143
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "cscprofile/#"

    const/16 v2, 0x8

    .line 144
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "cscsetting"

    const/16 v2, 0x9

    .line 145
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "cscsetting/#"

    const/16 v2, 0xa

    .line 146
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "imsswitch"

    const/16 v2, 0xb

    .line 147
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "imsswitch/*"

    const/16 v2, 0xd

    .line 148
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "imsswitchreset"

    const/16 v2, 0xc

    .line 149
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "simdata"

    const/16 v2, 0xe

    .line 150
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "nvstorage/*"

    const/16 v2, 0xf

    .line 151
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "userconfig"

    const/16 v2, 0x10

    .line 152
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "impu"

    const/16 v2, 0x11

    .line 153
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "selfprovisioning"

    const/16 v2, 0x12

    .line 154
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "gcfconfig"

    const/16 v2, 0x13

    .line 155
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "dnsblock"

    const/16 v2, 0x14

    .line 156
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "debugconfig/#"

    const/16 v2, 0x15

    .line 157
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "selfwificallingactivation"

    const/16 v2, 0x16

    .line 158
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "mno"

    const/16 v2, 0x17

    .line 160
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.samsung.rcs.dmconfigurationprovider"

    const-string v2, "omadm/./3GPP_IMS/*"

    const/16 v4, 0x18

    .line 163
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "omadm"

    .line 164
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "presence"

    .line 165
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "*"

    .line 166
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x0

    .line 167
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "omadm/*"

    const/16 v4, 0x19

    .line 170
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "nvlist"

    const/16 v2, 0x1a

    .line 173
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ims_info/rcs_ver"

    const/16 v2, 0x1f

    .line 175
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "secretkey"

    const/16 v2, 0x21

    .line 178
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "downloadconfig"

    const/16 v2, 0x1d

    .line 180
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "resetconfig"

    const/16 v2, 0x1e

    .line 181
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "smkupdatedinfo"

    const/16 v2, 0x22

    .line 183
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/settings/SettingsProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 186
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "simmobility"

    const/16 v2, 0x20

    .line 187
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "gcfinitrat"

    const/16 v2, 0x23

    .line 188
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "imsusersetting"

    const/16 v2, 0x24

    .line 189
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "sms_setting"

    const/16 v2, 0x25

    .line 190
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "epdgsettings"

    const/16 v2, 0x26

    .line 192
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "dtlocuserconsent"

    const/16 v2, 0x27

    .line 193
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "idcconfig"

    const/16 v2, 0x28

    .line 194
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    .line 200
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    .line 266
    new-instance v0, Lcom/sec/internal/ims/settings/SettingsProvider$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/settings/SettingsProvider$1;-><init>(Lcom/sec/internal/ims/settings/SettingsProvider;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mCarrierFeatureReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private doCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V
    .locals 3

    .line 222
    invoke-virtual {p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->loadCarrierFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "remove_mnomap"

    const/4 v1, 0x4

    .line 223
    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    sget-object v2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-ne v0, v2, :cond_1

    const-string v0, "add_mnomap"

    .line 225
    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 228
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 230
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://com.sec.ims.settings/mnomap_updated"

    .line 231
    invoke-static {v1, p2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 230
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 234
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://com.sec.ims.settings/dynamic_ims_updated"

    .line 235
    invoke-static {v1, p2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 234
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 240
    :cond_3
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/settings/SettingsProvider;->saveUpdatedCarrierId(II)V

    return-void
.end method

.method private dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 2

    .line 952
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ") : "

    if-eqz p4, :cond_0

    .line 956
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v0}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p4

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p4, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 959
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 962
    :goto_0
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result p4

    if-eqz p4, :cond_3

    const-string p4, "impu"

    .line 963
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "imsi"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const-string p4, "\\d++@"

    const-string/jumbo v0, "xxx@"

    .line 967
    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_2
    :goto_1
    const-string p4, "\\d"

    const-string/jumbo v0, "x"

    .line 964
    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 970
    :cond_3
    :goto_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 973
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p0, "ImsSettingsProvider"

    .line 975
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private getAllServiceSwitches()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "volte"

    .line 359
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "rcs"

    .line 360
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ims"

    .line 361
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "defaultmsgappinuse"

    .line 364
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mmtel"

    .line 367
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mmtel-video"

    .line 368
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mmtel-call-composer"

    .line 369
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "smsip"

    .line 370
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ss"

    .line 371
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "cdpn"

    .line 372
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "options"

    .line 373
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "presence"

    .line 374
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "im"

    .line 375
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ft"

    .line 376
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ft_http"

    .line 377
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "slm"

    .line 378
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "lastseen"

    .line 379
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "is"

    .line 380
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "vs"

    .line 381
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "euc"

    .line 382
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "gls"

    .line 383
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "profile"

    .line 384
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ec"

    .line 385
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "cab"

    .line 386
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "cms"

    .line 387
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "chatbot-communication"

    .line 388
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "datachannel"

    .line 389
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private getSavedCarrierId(I)I
    .locals 2

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v0, "carrierId"

    const/4 v1, -0x1

    invoke-static {p1, p0, v0, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getInt(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getSavedImpu(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 395
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "saved_impu"

    const-string v1, ""

    const/4 v2, -0x1

    invoke-static {v2, p0, v0, p1, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 396
    new-instance p1, Landroid/database/MatrixCursor;

    const-string v0, "impu"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 397
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1
.end method

.method private getSavedSwVersion(I)Ljava/lang/String;
    .locals 3

    .line 249
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "swversion"

    const-string v1, ""

    const-string v2, "carrierId"

    invoke-static {p1, p0, v2, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "3C061A6726A7E3CAF9634D43D93CAC61"

    return-object v0
.end method

.method private getShortenKeyForXNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "\\./3GPP_IMS/"

    const-string v0, ""

    .line 1056
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1059
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x2

    .line 1061
    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    const/4 p1, 0x0

    .line 1063
    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isCmcSecondaryDevice()Z
    .locals 5

    .line 1076
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    .line 1077
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;)Z

    .line 1078
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    .line 1079
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->deInit()V

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: isCmcSecondaryDevice: api: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSettingsProvider"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    return v2

    .line 1083
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const/4 v3, 0x0

    if-ne p0, v0, :cond_1

    return v3

    :cond_1
    const-string/jumbo p0, "ro.cmc.device_type"

    const-string v0, ""

    .line 1086
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1087
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: isCmcSecondaryDevice: prop: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sd"

    .line 1089
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private static synthetic lambda$reset$1(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V
    .locals 1

    .line 917
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->restoreDefaultImsProfile()Z

    .line 918
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateImsSwitchByDynamicUpdate()V

    .line 919
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->reset()V

    .line 920
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->loadByDynamicConfig()V

    .line 921
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getSmsSetting()Lcom/sec/internal/ims/settings/SmsSetting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SmsSetting;->init()Z

    return-void
.end method

.method private static synthetic lambda$resetForJibe$0(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V
    .locals 0

    .line 905
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->restoreDefaultImsProfile()Z

    .line 906
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->reset()V

    return-void
.end method

.method private queryIdcConfig()Landroid/database/Cursor;
    .locals 4

    .line 1162
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v0, "IDC_APPDATA_PROCESS_MODE_PREF"

    const-string v1, "file"

    const/4 v2, -0x1

    const-string/jumbo v3, "saved_idc_appdata_process_mode"

    invoke-static {v2, p0, v3, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1165
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/ims/settings/ImsSettings$ImsUserSettingTable;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1167
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "IDC_APPDATA_PROCESS_MODE"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1166
    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method private reset(I)V
    .locals 3

    .line 916
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    .line 923
    invoke-static {p1, v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->loadRcsSettings(IZ)Z

    .line 924
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 925
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SMS_SETTING:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private resetForJibe(I)V
    .locals 3

    .line 902
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "resetForJibe"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 904
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 909
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    .line 910
    invoke-static {v1, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 909
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 911
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_PROFILE_URI:Landroid/net/Uri;

    .line 912
    invoke-static {v0, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    .line 911
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private resetStoredConfig(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    .line 933
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 934
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    invoke-static {p1, v1, v2, v0, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 936
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mnoname"

    const-string v3, "default"

    .line 937
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 938
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 943
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 944
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->reset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private saveUpdatedCarrierId(II)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "carrierId"

    invoke-static {p1, v0, v1, v1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "swversion"

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {p1, p0, v1, p2, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendData(ILandroid/content/ContentValues;)V
    .locals 12

    .line 981
    invoke-static {p2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 982
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERNAL_KEY_PROCESS_NAME"

    .line 986
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 989
    :cond_0
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 991
    :goto_0
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",UPD:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x10040000

    .line 993
    invoke-static {v5, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 995
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 996
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "^"

    const-string v7, "ImsSettingsProvider"

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "nv_init_done"

    .line 998
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 1004
    :cond_1
    sget-object v8, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    .line 1005
    invoke-virtual {v9}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getPathName()Ljava/lang/String;

    move-result-object v11

    .line 1006
    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1007
    invoke-virtual {v9}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getIndex()I

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v10

    .line 1013
    :goto_2
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-ne v8, v10, :cond_4

    .line 1014
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v10, ":"

    if-ltz v8, :cond_5

    .line 1021
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1023
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "xNode item: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "X:"

    .line 1024
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1029
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "."

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1030
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Replace sensitive data: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "HIDE"

    move-object v9, v7

    .line 1033
    :cond_7
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    :cond_8
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/settings/SettingsProvider;->getShortenKeyForXNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x10040001

    .line 1037
    invoke-static {v6, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1041
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1043
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "DMST"

    .line 1046
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "USRC"

    .line 1047
    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendData : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string p2, "DMUI"

    invoke-static {p1, p0, p2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_a
    return-void
.end method

.method private setSavedImpu(Landroid/content/ContentValues;)I
    .locals 3

    .line 402
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v0, "imsi"

    .line 403
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "impu"

    .line 404
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    const-string/jumbo v2, "saved_impu"

    .line 402
    invoke-static {v1, p0, v2, v0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private strToIntPhoneId(Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 892
    :try_start_0
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 893
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 895
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "strToIntPhoneId failed! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsSettingsProvider"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private updateEpdgSystemSettings(Landroid/content/ContentValues;)V
    .locals 6

    .line 1117
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".+[1-9]$"

    .line 1119
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1120
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1123
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1124
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 1125
    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 1126
    :cond_2
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1128
    :try_start_0
    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    if-ltz v2, :cond_7

    if-gez v3, :cond_4

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "wifi_call_enable"

    const-string v5, ""

    .line 1141
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1142
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallEnabled(Landroid/content/Context;II)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "wifi_call_preferred"

    .line 1143
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 1144
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallPreferred(Landroid/content/Context;II)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "wifi_call_when_roaming"

    .line 1145
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallWhenRoaming(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 1135
    :cond_7
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEpdgSystemSettings: Skip wrong input ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "null!"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] => lastChar ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], val ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSettingsProvider"

    .line 1135
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private updateIdcConfig(Landroid/content/ContentValues;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1172
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "IDC_APPDATA_PROCESS_MODE"

    .line 1176
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "ImsSettingsProvider"

    const-string p1, "IDC_APPDATA_PROCESS_MODE is null"

    .line 1178
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1182
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "saved_idc_appdata_process_mode"

    const-string v1, "IDC_APPDATA_PROCESS_MODE_PREF"

    const/4 v2, -0x1

    invoke-static {v2, p0, v0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateOtherVoLTEIconSetting(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1156
    :goto_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1157
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_1
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 353
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    return-object p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string p3, "Call"

    const/4 v0, 0x1

    .line 873
    invoke-direct {p0, p3, v0, p1, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 875
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo p3, "resetForJibe"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const-string p2, "dump"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 877
    :cond_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 881
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->strToIntPhoneId(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/settings/SettingsProvider;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 655
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p2

    .line 656
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 661
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Delete"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v1, v3}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 666
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 670
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/16 v3, 0xf

    if-eq v2, v3, :cond_3

    const/16 v3, 0x18

    if-eq v2, v3, :cond_3

    const/16 p3, 0x1e

    if-ne v2, p3, :cond_2

    .line 679
    iget-object p3, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->clearSmkConfig()V

    .line 680
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    .line 681
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 684
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown URI "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 676
    :cond_3
    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->deleteDm(Landroid/net/Uri;)I

    move-result v0

    goto :goto_1

    .line 672
    :cond_4
    invoke-virtual {p3}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object p0

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->remove(I)V

    :goto_1
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1071
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1072
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;
    .locals 2

    .line 342
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    if-nez p0, :cond_0

    const-string v0, "ImsSettingsProvider"

    const-string v1, "getDeviceConfigManager: Not exist."

    .line 344
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .line 602
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 603
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 608
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Insert"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, v3, v5}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 610
    iget-object v3, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":CloudMessageService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 611
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "insert: Ignore the call from CMS process"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-object v2

    .line 616
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 617
    invoke-static {v3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 618
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 622
    :goto_0
    sget-object v4, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, v3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    if-eq v4, v5, :cond_6

    const/16 v5, 0x15

    if-eq v4, v5, :cond_5

    const/16 v5, 0x18

    if-eq v4, v5, :cond_4

    const/16 v5, 0x26

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    .line 644
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown URI "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 624
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->setSavedImpu(Landroid/content/ContentValues;)I

    goto :goto_1

    .line 627
    :pswitch_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getUserConfigStorage()Lcom/sec/internal/ims/settings/UserConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/settings/UserConfigStorage;->insert(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 641
    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->updateEpdgSystemSettings(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 637
    :cond_4
    :pswitch_2
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->sendData(ILandroid/content/ContentValues;)V

    .line 638
    invoke-virtual {v1, v3, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 633
    :cond_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDebugConfigStorage()Lcom/sec/internal/ims/settings/DebugConfigStorage;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/settings/DebugConfigStorage;->insert(ILandroid/content/ContentValues;)V

    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 630
    :cond_6
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v0

    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v1, p2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->insert(Lcom/sec/ims/settings/ImsProfile;)I

    move-result p2

    int-to-long v0, p2

    .line 647
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 649
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 6

    .line 204
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    .line 205
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v2, 0x1f4

    const-string v3, "ImsSettingsProvider"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->isCmcSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-direct {v2, v4, v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CMC supported no NOSIM model : DeviceConfigManager"

    .line 213
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mCarrierFeatureReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 410
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v5

    .line 411
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return-object v7

    .line 416
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Uri["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 419
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 420
    invoke-static {v9}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    const-string v11, ""

    if-nez v10, :cond_1

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v1

    :goto_0
    if-eqz v3, :cond_2

    .line 425
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", sel : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    if-eqz v2, :cond_3

    .line 428
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", pro : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 431
    :cond_3
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v10

    const/4 v12, 0x0

    if-nez v10, :cond_4

    const-string v10, "Query"

    .line 432
    invoke-direct {v0, v10, v12, v8, v12}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 435
    :cond_4
    sget-object v8, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, v9}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const-string v10, "ImsSettingsProvider"

    const-string v13, "mnoname"

    const-string/jumbo v14, "profile"

    const/4 v15, 0x1

    if-eq v8, v15, :cond_12

    const/4 v7, 0x2

    if-eq v8, v7, :cond_10

    const/4 v7, 0x4

    if-eq v8, v7, :cond_f

    const/16 v7, 0xb

    if-eq v8, v7, :cond_d

    const/16 v7, 0xd

    if-eq v8, v7, :cond_d

    const/16 v7, 0x13

    if-eq v8, v7, :cond_c

    const/16 v7, 0x15

    if-eq v8, v7, :cond_b

    const/16 v7, 0x27

    const/4 v14, -0x1

    if-eq v8, v7, :cond_a

    const/16 v7, 0x28

    if-eq v8, v7, :cond_9

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    .line 591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :pswitch_0
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getSmsSetting()Lcom/sec/internal/ims/settings/SmsSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/SmsSetting;->getAsCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 487
    :pswitch_1
    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryImsUserSetting([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 564
    :pswitch_2
    iget-object v0, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "gcf_init_rat"

    invoke-static {v14, v0, v1, v12, v12}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "rat"

    .line 566
    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 568
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v2

    .line 548
    :pswitch_3
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "smkupdatedinfo"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 551
    :try_start_0
    iget-object v0, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get SMK Updated Information : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_5

    .line 555
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string/jumbo v0, "updated info return, query to ImsSettings"

    .line 556
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_5
    return-object v1

    .line 530
    :pswitch_4
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "secretkey"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 542
    :pswitch_5
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "simmobility"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivated()Z

    move-result v2

    if-ne v2, v15, :cond_6

    move v12, v15

    :cond_6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 536
    :pswitch_6
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "rcs_ver"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string v2, "6.0.3"

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 514
    :pswitch_7
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "NVLIST"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 515
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 516
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_7
    return-object v0

    .line 506
    :pswitch_8
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 507
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryDm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 522
    :pswitch_9
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "mvnoname"

    const-string v2, "hassim"

    filled-new-array {v13, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v13, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 525
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getMvnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 526
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getHasSim()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 437
    :pswitch_a
    aget-object v1, v4, v12

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedImpu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 497
    :pswitch_b
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getUserConfigStorage()Lcom/sec/internal/ims/settings/UserConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/settings/UserConfigStorage;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_8
    :pswitch_c
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 511
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryDm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 587
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->queryIdcConfig()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 578
    :cond_a
    iget-object v0, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "dtlocuserconsent"

    invoke-static {v14, v0, v1, v12, v12}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dtlocation"

    .line 580
    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 581
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 582
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v2

    .line 503
    :cond_b
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDebugConfigStorage()Lcom/sec/internal/ims/settings/DebugConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Lcom/sec/internal/ims/settings/DebugConfigStorage;->query(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 500
    :cond_c
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryGcfConfig()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_d
    if-nez v2, :cond_e

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getAllServiceSwitches()Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_2

    :cond_e
    move-object v0, v2

    .line 494
    :goto_2
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryImsSwitch([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 484
    :cond_f
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 474
    :cond_10
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 475
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v1

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 478
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v14, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_11
    return-object v0

    .line 444
    :cond_12
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 447
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "="

    .line 448
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v15

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsProfile query with  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v5, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "mdmn_type"

    .line 450
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 452
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfileListByMdmnType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_13
    const-string/jumbo v2, "salescode"

    .line 453
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_14
    const-string v2, "mccmnc"

    .line 455
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 457
    :cond_15
    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 458
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getGlobalGcEnabled()Z

    move-result v2

    .line 459
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfileListByMnoName(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 461
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 464
    :cond_17
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileList()Ljava/util/List;

    move-result-object v1

    .line 467
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 468
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v14, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_4

    :cond_18
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_9
        :pswitch_c
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .line 693
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p3

    .line 694
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    .line 699
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Update"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v1, v3}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 701
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":CloudMessageService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 702
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p1, "update: Ignore the call from CMS process"

    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return v0

    .line 707
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 709
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 713
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v4, 0x0

    const-string v5, "ImsSettingsProvider"

    packed-switch v2, :pswitch_data_0

    .line 860
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown URI "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 856
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->updateIdcConfig(Landroid/content/ContentValues;)V

    goto/16 :goto_3

    .line 853
    :pswitch_2
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDtLocUserConsent(Landroid/content/ContentValues;)V

    goto/16 :goto_3

    :pswitch_3
    :try_start_0
    const-string v1, "name"

    .line 793
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    .line 794
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 795
    invoke-virtual {p4, v1, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->setImsUserSetting(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    const-string p2, "IMS_USER_SETTING - NullPointerException"

    .line 797
    invoke-static {v5, p3, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 849
    :pswitch_4
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateGcfInitRat(Landroid/content/ContentValues;)V

    goto/16 :goto_3

    .line 755
    :pswitch_5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SMK UPDATE"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const v1, 0x10040010

    invoke-static {v1, p4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 757
    iget-object p4, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {p4, p3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p3

    .line 758
    sget-object p4, Lcom/sec/internal/constants/ims/ImsConstants;->DOWNLOAD_CONFIG:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->updateSmkConfig(Ljava/lang/String;)V

    const-string/jumbo p2, "remove_mnomap"

    const/4 p4, 0x2

    .line 760
    invoke-virtual {p3, p4, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-ne p2, v1, :cond_4

    const-string p2, "add_mnomap"

    .line 762
    invoke-virtual {p3, p4, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    sget-object p3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p2, p3, :cond_3

    goto :goto_1

    :cond_3
    move p2, v0

    goto :goto_2

    :cond_4
    :goto_1
    move p2, v3

    .line 764
    :goto_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    if-eqz p2, :cond_5

    .line 766
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "content://com.sec.ims.settings/mnomap_updated"

    .line 767
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 766
    invoke-virtual {p2, p3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move p2, v0

    goto/16 :goto_5

    .line 788
    :pswitch_6
    new-instance p2, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {p2}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->forceDeleteALL(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 844
    :pswitch_7
    invoke-direct {p0, p3, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->sendData(ILandroid/content/ContentValues;)V

    .line 845
    invoke-virtual {p4, v1, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDm(Landroid/net/Uri;Landroid/content/ContentValues;)I

    goto :goto_3

    .line 840
    :pswitch_8
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateMno(Landroid/content/ContentValues;)V

    goto :goto_3

    .line 836
    :pswitch_9
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateWificallingProperty(Landroid/content/ContentValues;)V

    goto :goto_3

    .line 832
    :pswitch_a
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDnsBlock(Landroid/content/ContentValues;)V

    goto :goto_3

    .line 828
    :pswitch_b
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateGcfConfig(Landroid/content/ContentValues;)V

    goto :goto_3

    .line 824
    :pswitch_c
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateProvisioningProperty(Landroid/content/ContentValues;)V

    goto :goto_3

    :pswitch_d
    const-string/jumbo p2, "update: not supported in NV_STORAGE. use insert"

    .line 820
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 816
    :pswitch_e
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->resetImsSwitch()V

    goto :goto_3

    :pswitch_f
    :try_start_1
    const-string/jumbo v1, "service"

    .line 804
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enabled"

    .line 805
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v2, "ipme"

    .line 806
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v3, v2

    .line 809
    invoke-virtual {p4, v1, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->enableImsSwitch(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string p2, "IMS_SWITCH - NullPointerException"

    .line 811
    invoke-static {v5, p3, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :pswitch_10
    const-string/jumbo p2, "update: reset."

    .line 782
    invoke-static {v5, p3, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 783
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->reset()V

    .line 784
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->load()V

    goto :goto_3

    .line 778
    :pswitch_11
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->update(Landroid/content/ContentValues;)V

    goto :goto_3

    .line 773
    :pswitch_12
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->restoreDefaultImsProfile()Z

    :cond_5
    :goto_3
    move p2, v0

    goto :goto_4

    .line 736
    :pswitch_13
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 738
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getPreviousMno()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 739
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v2

    .line 740
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getExtendedPublishTimer()I

    move-result v6

    .line 742
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v7

    invoke-virtual {v7, v0, p2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->update(ILandroid/content/ContentValues;)I

    move-result p2

    .line 743
    sget-object v7, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v7, :cond_7

    .line 744
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 745
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p4

    .line 746
    invoke-virtual {p4}, Lcom/sec/ims/settings/ImsProfile;->getExtendedPublishTimer()I

    move-result p4

    if-eq v6, p4, :cond_7

    :cond_6
    const-string/jumbo p0, "update : badEventExpiry or badEventExpiry for ATT"

    .line 748
    invoke-static {v5, p3, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return p2

    :cond_7
    :goto_4
    move v0, v3

    :goto_5
    if-eqz v0, :cond_8

    .line 864
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "notifyChange uri ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_8
    return p2

    :pswitch_14
    const-string/jumbo p0, "update: Bulk edit not supported."

    .line 715
    invoke-static {v5, p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
