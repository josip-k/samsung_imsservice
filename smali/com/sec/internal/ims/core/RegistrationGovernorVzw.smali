.class public Lcom/sec/internal/ims/core/RegistrationGovernorVzw;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorVzw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;
    }
.end annotation


# static fields
.field protected static final DEFAULT_RETRY_AFTER_MS:J = 0x7530L

.field protected static final DEFAULT_TIMS_TIMER_SEC:I = 0x78

.field protected static final DELAY_FOR_CDMALESS_MODEL:I = 0x6

.field private static final DELAY_FOR_CDMA_HANDOVER:I = 0x3

.field protected static final INTENT_ACTION_TRIGGER_OMADM_TREE_SYNC:Ljava/lang/String; = "com.samsung.sdm.START_DM_SYNC_SESSION"

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnVzw"

.field protected static final REG_RETRY_TIME_MS:[J


# instance fields
.field protected mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

.field protected mDmLastEabEnabled:Z

.field protected mDmLastLvcEnabled:Z

.field protected mDmLastVceEnabled:Z

.field protected mDmLastVolteEnabled:Z

.field protected mDmTimsTimerInSec:I

.field protected mDmVolteNodeUpdated:Z

.field protected mHasPendingDeregistration:Z

.field protected mHasPendingOmadmUpdate:Z

.field protected mHasPendingReregistration:Z

.field protected mIsInviteForbidden:Z

.field protected mOverrideEpdgCellularPref:Z

.field protected mPdnType:I


# direct methods
.method public static synthetic $r8$lambda$viEhpIUNLw2dhh3GdX0iQN0eBBk(Lcom/sec/internal/ims/core/RegistrationGovernorVzw;Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->lambda$isLocationInfoLoaded$0(Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [J

    .line 95
    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->REG_RETRY_TIME_MS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x7530
        0x7530
        0xea60
        0x1d4c0
        0x75300
        0xdbba0
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 2

    .line 115
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    const/4 p4, 0x0

    .line 99
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    .line 100
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingReregistration:Z

    .line 101
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    .line 102
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    .line 103
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    .line 104
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    .line 105
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mIsInviteForbidden:Z

    .line 106
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    .line 107
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    .line 108
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    .line 111
    new-instance p5, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-direct {p5}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;-><init>()V

    iput-object p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    .line 117
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p5

    iput p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPdnType:I

    .line 119
    iget-object p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget p6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "mmtel"

    const/4 v1, 0x1

    invoke-static {p5, v0, v1, p6}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result p5

    iput-boolean p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    const-string p5, "LRA"

    .line 120
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget p6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p5, p6}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessModel(Landroid/content/Context;I)Z

    move-result p5

    if-nez p5, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    iget p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sync SMS_OVER_IP based on VOLTE_ENABLED=0 ONLY FOR hVoLTE models"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p5, p6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ",SMS_OVER_IP"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p5, 0x100a0001

    invoke-static {p5, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-boolean p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    iget p6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, p5, p6}, Lcom/sec/ims/settings/NvConfiguration;->setSmsIpNetworkIndi(Landroid/content/Context;ZI)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string p5, "mmtel-video"

    iget p6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, p5, v1, p6}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    .line 128
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo p5, "presence"

    iget p6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, p5, v1, p6}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    .line 129
    invoke-direct {p0, p7}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->readVCEConfigValue(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    .line 131
    invoke-direct {p0, p7}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->readDmTimsTimer(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimerInSec:I

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "RegistrationGovernorVzw: mDmLastVceEnabled["

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, "]"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "RegiGvnVzw"

    invoke-static {p5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    iget-boolean p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {p1, p3}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 136
    :try_start_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    if-eqz p1, :cond_1

    .line 137
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 139
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3, p4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    const-string p1, "BAE1000000000000"

    .line 146
    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    :try_start_1
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p7, p4, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",FKR VLT ON"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x100a0002

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, p2}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->forceTurnOnVoLteWhenMenuRemoved()V

    .line 157
    :cond_3
    :goto_1
    sget-object p1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 159
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->updateVolteState()V

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    const-string p4, "1"

    const-string p5, "0"

    if-eqz p3, :cond_4

    move-object p3, p4

    goto :goto_2

    :cond_4
    move-object p3, p5

    :goto_2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    if-eqz p3, :cond_5

    move-object p3, p4

    goto :goto_3

    :cond_5
    move-object p3, p5

    :goto_3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-boolean p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    if-eqz p3, :cond_6

    move-object p3, p4

    goto :goto_4

    :cond_6
    move-object p3, p5

    :goto_4
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    move-object p4, p5

    :goto_5
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/high16 p1, 0x100a0000

    .line 161
    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method private applyVopsNotSupported(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "applyVopsNotSupported: VoPS Not supported but keep current registration."

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-object p1

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "RegiGvnVzw"

    const-string p1, "CDMALess and VoPS not Supported. Disable VZW LTE PLMN."

    .line 431
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "mmtel-video"

    const-string v1, "VoPS Off"

    .line 434
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mmtel"

    .line 435
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return-object p1
.end method

.method private checkCbrsOffloadingStatus()Z
    .locals 2

    .line 246
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->isCctChaCbrsMsoSim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "checkCbrsOffloadingStatus: REGISTRATION avoided for MSO eSIM"

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private handleCallSnapShotIfExist()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RegiGvnVzw"

    const-string v1, "handle call snapshot"

    .line 403
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->-$$Nest$fgetmEvent(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->-$$Nest$fgetmError(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)Lcom/sec/ims/util/SipError;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->-$$Nest$fgetmCallType(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->clear()V

    :cond_0
    return-void
.end method

.method private isRetryLongerThanTims(Lcom/sec/internal/constants/ims/core/PdnFailReason;)Z
    .locals 6

    .line 1007
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeout:Lcom/sec/internal/helper/DelayedMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->PDN_THROTTLED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNextRetryTime()J

    move-result-wide v2

    .line 1013
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeout:Lcom/sec/internal/helper/DelayedMessage;

    invoke-virtual {p1}, Lcom/sec/internal/helper/DelayedMessage;->getTimeout()J

    move-result-wide v4

    .line 1014
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRetryLongerThanTims: Next retry time: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", TIMS timeout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiGvnVzw"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private isSVLTEDevice()Z
    .locals 1

    const-string/jumbo p0, "ro.ril.svlte1x"

    .line 1206
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1207
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$isLocationInfoLoaded$0(Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V
    .locals 1

    .line 1294
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    return-void
.end method

.method private notifyImsNotAvailableByPdnReject()V
    .locals 3

    .line 1021
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "notifyImsNotAvailableByPdnReject"

    const-string v2, "RegiGvnVzw"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    const/4 v0, 0x0

    .line 1023
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    return-void
.end method

.method private onSipError_MmtelVoice(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 11

    .line 620
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 621
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorVzw;->FORBIDDEN_ORIG_USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x2b

    if-nez v1, :cond_e

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorVzw;->FORBIDDEN_ORIG_USER_NOT_REGISTERED2:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 625
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorVzw;->FORBIDDEN_USER_NOT_AUTHORIZED_FOR_SERVICE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 629
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    const-string v0, "Volte service will be disable for 403 Forbidden"

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 630
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->setInvite403DisableService(ZI)V

    .line 631
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.sdm.START_DM_SYNC_SESSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.sdm"

    .line 632
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 634
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_4

    .line 635
    :cond_1
    invoke-static {p2}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 637
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    .line 646
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, p1, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 647
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 648
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v7, 0x1

    iget-boolean v8, v6, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    mul-int/lit16 v9, v4, 0x3e8

    const-string v10, "503 Service Unavailable: IMS Outage for voice service"

    invoke-interface/range {v5 .. v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    .line 650
    new-instance p0, Lcom/sec/ims/util/SipError;

    const/16 p1, 0x9c6

    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    move-object p2, p0

    goto/16 :goto_4

    .line 655
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, p1, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 656
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    .line 657
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 658
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/ims/ImsRegistration;->setProhibited(Z)V

    .line 662
    :cond_4
    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    goto/16 :goto_4

    .line 664
    :cond_5
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isTimerVzwExpiredError(Lcom/sec/ims/util/SipError;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    const/16 v5, 0x6a6

    if-eq v5, v1, :cond_d

    const/16 v1, 0x9cb

    .line 665
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v5

    if-ne v1, v5, :cond_6

    goto/16 :goto_2

    .line 670
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v5, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 681
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->PRECONDITION_FAILURE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 683
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 684
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x1

    iget-boolean v6, v4, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    const/16 v7, 0x1770

    const-string v8, "VoLTE call setup failure"

    invoke-interface/range {v3 .. v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    goto :goto_4

    :cond_8
    const/16 v0, 0x465

    .line 685
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 686
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x36

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 687
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v0, "EPSFB"

    invoke-interface {p1, p0, v3, v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_4

    .line 689
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0

    .line 673
    :cond_a
    :goto_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    if-eqz p1, :cond_c

    if-nez v0, :cond_b

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 674
    :cond_b
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, p1, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 675
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    goto :goto_4

    .line 679
    :cond_c
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeCurrentPcscfAndInitialRegister(Z)V

    goto :goto_4

    .line 668
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 669
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string/jumbo v0, "vzw timer expired"

    invoke-interface {p1, p0, v3, v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_4

    .line 623
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 624
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "403 Forbidden"

    invoke-interface/range {v3 .. v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    :goto_4
    return-object p2
.end method

.method private readDmTimsTimer(Landroid/content/Context;)I
    .locals 2

    const/16 v0, 0x78

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "omadm/./3GPP_IMS/VZW_TIMS_TIMER"

    invoke-static {p1, v1, v0, p0}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private readVCEConfigValue(Landroid/content/Context;)Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VZW"

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VPP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "VCE_CONFIG"

    const-string v0, "0"

    .line 168
    invoke-static {p1, p0, v0}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private triggerDeRegistration(Ljava/lang/String;IZZ)V
    .locals 3

    .line 1325
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedToDeRegistration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnVzw"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1327
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1328
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0, p3, p4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return-void
.end method


# virtual methods
.method protected applyCsfbSupported(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "mmtel"

    .line 1193
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCsfbSupported(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1194
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    return-object p1
.end method

.method protected applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1243
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v0

    const/16 v1, 0x12

    const-string v2, "mmtel"

    if-nez v0, :cond_1

    if-eq p2, v1, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 1250
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "by voice type cs"

    .line 1251
    invoke-virtual {p0, p1, v2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1256
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mmtel-video"

    const-string v3, "by no mmtel"

    .line 1257
    invoke-virtual {p0, p1, v0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->isVoWiFiSupported(I)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p2, v1, :cond_6

    .line 1261
    iget-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    if-nez p2, :cond_6

    .line 1262
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result p2

    .line 1263
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1264
    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "RegiGvnVzw"

    const-string v1, "VoWiFi is disabled, but (LTE/NR + WiFi). Keep mmtel"

    .line 1265
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "by VoWiFi settings"

    .line 1267
    invoke-virtual {p0, p1, v2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1277
    :cond_4
    :goto_0
    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 1278
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p2

    iget-object p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq p2, v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isVoiceOverWifiPreferred()Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "by VowifiPreferred"

    .line 1279
    invoke-virtual {p0, p1, v2, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_6
    return-object p1
.end method

.method applySSACPolicy(ILjava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1166
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isFullBarring(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1170
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCsfbSupported(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1175
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "applySSACPolicy: CSFB is not available. Discard PLMN."

    const-string p2, "RegiGvnVzw"

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1176
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1177
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isSVLTEDevice()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "mmtel-video"

    const-string v0, "by SSAC"

    .line 1178
    invoke-virtual {p0, p2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mmtel"

    .line 1179
    invoke-virtual {p0, p2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_SSAC_BARRING:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_2
    return-object p2
.end method

.method protected applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 412
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_1

    .line 416
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->applyVopsNotSupported(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method protected checkCallStatus(I)Z
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 188
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isSVLTEDevice()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount(I)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasEmergencyCall(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v1

    if-eqz v1, :cond_6

    .line 191
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v1

    const/16 v4, 0xd

    const-string v5, "RegiGvnVzw"

    if-ne v1, v4, :cond_3

    .line 192
    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 193
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCallStatus: Keep going IMS deregistration. LTE -> RAT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_4

    if-ne p1, v4, :cond_4

    .line 199
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "checkCallStatus: EPSFB. Need re-registration."

    invoke-static {v5, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    .line 202
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 210
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "Call status is not idle but CDMA-less should allow this."

    invoke-static {v5, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_5
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "TelephonyCallStatus is not idle"

    invoke-static {v5, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_6
    :goto_0
    return v3
.end method

.method protected checkEpdgEvent(I)Z
    .locals 3

    const/16 v0, 0x12

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 177
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 178
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0, v2}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setKeepPdn(Z)V

    const-string p0, "RegiGvnVzw"

    const-string p1, "EPDG is not actually connected"

    .line 180
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method protected checkNetworkEvent(I)Z
    .locals 1

    .line 222
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    if-eqz p1, :cond_0

    const-string p1, "RegiGvnVzw"

    const-string v0, "mHasPendingOmadmUpdate is enabled"

    .line 223
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ONGOING_OTA:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public checkProfileUpdateFromDM(Z)V
    .locals 2

    const-string p1, "RegiGvnVzw"

    const-string v0, "checkProfileUpdateFromDM()"

    .line 744
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1, p0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    return-void
.end method

.method protected checkVowifiSetting(I)Z
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->isVoWiFiSupported(I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "RegiGvnVzw"

    const-string v0, "VoWiFi feature is not enabled"

    .line 232
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->CSC_DISABLED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public determineDeRegistration(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no IMS service for network : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    .line 1308
    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppLegacyNetwork(I)Z

    move-result p2

    .line 1306
    invoke-direct {p0, p1, v2, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->triggerDeRegistration(Ljava/lang/String;IZZ)V

    return v1

    .line 1312
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isFullBarring(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1313
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, p2}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCsfbSupported(I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "SSAC barred on PS only area"

    const/16 p2, 0x4c

    .line 1314
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->triggerDeRegistration(Ljava/lang/String;IZZ)V

    return v1

    :cond_1
    return v0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 771
    invoke-super/range {p0 .. p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->filterService(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v2

    .line 772
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 773
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    :cond_0
    const-string/jumbo v3, "persist.sys.ims_test_mode"

    const/4 v4, 0x0

    .line 776
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "RegiGvnVzw"

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    const-string v0, "by VZW IMS_TEST_MODE_PROP - remove all service"

    .line 777
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 782
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ro.product.first_api_level"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v7, 0x1d

    if-ge v3, v7, :cond_2

    const-string/jumbo v3, "smsip"

    const-string v7, "by unsupported E911 over SMS"

    .line 783
    invoke-virtual {v0, v2, v3, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v2

    const/16 v3, 0xd

    const-string v7, "mmtel"

    const-string v8, "mmtel-video"

    if-ne v1, v3, :cond_3

    .line 790
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getVolteAllowedWithDsac()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "by DSAC feature"

    .line 791
    invoke-virtual {v0, v2, v7, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual {v0, v2, v8, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_DSAC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 798
    :cond_3
    iget v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v9, "keep_msisdn_validation"

    invoke-static {v3, v9, v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    .line 799
    iget v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    if-eq v9, v6, :cond_4

    iget-object v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v10}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v10

    invoke-interface {v9, v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->validateMsisdn(I)Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v3, :cond_6

    .line 800
    :cond_4
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v3, v9}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "CDMALess IMSI based"

    .line 802
    invoke-virtual {v0, v2, v8, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "by limited regi"

    .line 804
    invoke-virtual {v0, v2, v8, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0, v2, v7, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_LIMITED_MODE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 810
    :cond_6
    :goto_0
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/core/RegistrationManager;->isInvite403DisabledService(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Invite 403"

    .line 811
    invoke-virtual {v0, v2, v8, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0, v2, v7, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_INVITE_403:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 817
    :cond_7
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->applySSACPolicy(ILjava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 821
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v3, :cond_8

    iget v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v3, v9}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getVideoCallCount(I)I

    move-result v3

    if-lez v3, :cond_8

    move v3, v6

    goto :goto_1

    :cond_8
    move v3, v4

    .line 822
    :goto_1
    iget v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 823
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isDataUsageExceeded()Z

    move-result v10

    if-eqz v10, :cond_9

    move v10, v6

    goto :goto_2

    :cond_9
    move v10, v4

    .line 824
    :goto_2
    iget-object v11, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v11}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v11

    .line 825
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v12

    if-eqz v11, :cond_b

    if-eqz v12, :cond_b

    .line 830
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_roaming"

    invoke-static {v12, v13, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v6, :cond_a

    move v12, v6

    goto :goto_3

    :cond_a
    move v12, v4

    .line 833
    :cond_b
    :goto_3
    iget v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DataAllowed: romaing ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, "]: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v13, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x12

    if-eq v1, v13, :cond_c

    if-eqz v12, :cond_d

    if-nez v10, :cond_d

    .line 835
    :cond_c
    iget-boolean v14, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    if-eqz v14, :cond_d

    iget-boolean v14, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    if-nez v14, :cond_14

    :cond_d
    if-eqz v3, :cond_f

    .line 838
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_e
    const-string v3, "by EAB false but activated VT call is exist."

    .line 840
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iput-boolean v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingReregistration:Z

    goto :goto_6

    .line 843
    :cond_f
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 845
    iget-boolean v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    if-eqz v3, :cond_13

    iget-boolean v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    if-nez v3, :cond_10

    goto :goto_4

    :cond_10
    if-nez v12, :cond_11

    const-string v3, "by mobile data off"

    goto :goto_5

    :cond_11
    if-eqz v10, :cond_12

    const-string v3, "by data limit exceed"

    goto :goto_5

    :cond_12
    const-string/jumbo v3, "remove mmtel-video"

    goto :goto_5

    .line 846
    :cond_13
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "by DM : volte("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "), eab("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 854
    :goto_5
    invoke-virtual {v0, v2, v8, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_14
    :goto_6
    iget-boolean v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    const-string/jumbo v10, "presence"

    if-nez v3, :cond_15

    const-string v3, "by volteEnabled false - presence"

    .line 864
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "by volteEnabled false"

    .line 865
    invoke-virtual {v0, v2, v10, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_15
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v3, v5}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 869
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 870
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v12

    invoke-static {v3, v5, v12}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v12

    .line 869
    invoke-static {v3, v5, v12}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getRcsEnabledServiceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 871
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v5

    array-length v12, v5

    move v14, v4

    :goto_7
    if-ge v14, v12, :cond_17

    aget-object v15, v5, v14

    .line 872
    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_16

    const-string v4, "Disable from ACS"

    .line 873
    invoke-virtual {v0, v2, v15, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_7

    :cond_17
    const-string v4, "im"

    .line 877
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "chatbot-communication"

    const-string v4, "Chatbot disabled in autoconfig"

    .line 878
    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_18
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    iget v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 884
    invoke-static {v3, v4, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v3

    if-ne v3, v6, :cond_19

    goto :goto_8

    :cond_19
    const/4 v6, 0x0

    .line 885
    :goto_8
    iget v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/util/ImsUtil;->isSingleRegiAppConnected(I)Z

    move-result v3

    if-nez v3, :cond_1a

    if-eqz v6, :cond_1b

    :cond_1a
    if-eqz v11, :cond_1d

    if-eq v1, v13, :cond_1d

    .line 887
    :cond_1b
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_1d

    aget-object v5, v1, v4

    .line 888
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 889
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Roaming:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 894
    :cond_1d
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v1, v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 895
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_1f

    aget-object v5, v1, v4

    .line 896
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "No DualRcs"

    .line 897
    invoke-virtual {v0, v2, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    if-eqz v11, :cond_20

    .line 905
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->applyCsfbSupported(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    :cond_20
    if-eqz v9, :cond_21

    .line 909
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_21

    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 910
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_21

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "TTY ON"

    .line 911
    invoke-virtual {v0, v2, v8, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, v2, v7, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_CS_TTY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_21
    return-object v2
.end method

.method public finishOmadmProvisioningUpdate()V
    .locals 1

    const/4 v0, 0x0

    .line 938
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    const/4 v0, 0x1

    .line 939
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->setRadioPower(Z)V

    return-void
.end method

.method protected forceTurnOnVoLteWhenMenuRemoved()V
    .locals 4

    .line 1365
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mIsVoLteMenuRemoved:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mPdnType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 1366
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v3, "forceTurnOnVoLteWhenMenuRemoved: No VoLTE UI exists. Force turn on!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->forceTurnOnVoLte()V

    :cond_0
    return-void
.end method

.method protected getWaitTime()J
    .locals 5

    .line 734
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->REG_RETRY_TIME_MS:[J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 737
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 739
    :goto_0
    aget-wide v3, v0, p0

    add-long/2addr v3, v1

    return-wide v3
.end method

.method isCallTypeVideo(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

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

.method isFullBarring(I)Z
    .locals 1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 1188
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 1189
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSsacEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 2

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 1290
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1291
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 1292
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->isVoWiFiSupported(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1293
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string/jumbo v0, "update geo location"

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1294
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorVzw;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isReadyToRegister(I)Z
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->checkCbrsOffloadingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->checkNetworkEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->checkCallStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->checkVowifiSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->checkEpdgEvent(I)Z

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

.method public isThrottled()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    if-eqz v0, :cond_0

    const-string p0, "RegiGvnVzw"

    const-string v0, "Under discard current network. Do not try IMS registration."

    .line 266
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 270
    :cond_0
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->isThrottled()Z

    move-result p0

    return p0
.end method

.method isVoiceOverWifiEnabled()Z
    .locals 4

    .line 750
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 751
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/sec/internal/constants/ims/VowifiConfig;->getRoamPrefMode(Landroid/content/Context;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 755
    :cond_1
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoWiFi pref: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isRoaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnVzw"

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method isVoiceOverWifiPreferred()Z
    .locals 4

    .line 760
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isVoiceOverWifiEnabled()Z

    move-result v0

    .line 761
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->isCdmaAvailableForVoice(I)Z

    move-result v1

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceOverWifiPreferred: isVowifiPreferred ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] isCdmaAvailableForVoice : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiGvnVzw"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needPendingPdnConnected()Z
    .locals 4

    .line 1333
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1334
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v2, "RegiGvnVzw"

    if-ne v0, v1, :cond_0

    .line 1335
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "onPdnConnected: Pending 1 sec! PCO not yet received."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1337
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->setPcoType(Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;)V

    const/4 p0, 0x1

    return p0

    .line 1339
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    if-ne v0, v1, :cond_1

    .line 1340
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "onPdnConnected: 1 sec delay has expired!"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1341
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->setPcoType(Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method needReRegiOnCallStatusChanged(ILcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;I)Z
    .locals 6

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x12

    if-ne v0, v3, :cond_9

    .line 516
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v4, "needReRegiOnCallStatusChanged, re-regi case"

    const-string v5, "RegiGvnVzw"

    if-ne p2, v0, :cond_2

    .line 517
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    const-string v0, "mmtel"

    invoke-virtual {p2, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 520
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isCallTypeVideo(I)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType(I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "needReRegiOnCallStatusChanged, VOWIFI or VoLTE disabled case, no re-regi"

    .line 527
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 523
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    .line 524
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 531
    :cond_2
    sget-object p3, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p2, p3, :cond_b

    .line 532
    iget-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    if-eqz p2, :cond_b

    .line 534
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p2, :cond_6

    .line 535
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getEpdgManager()Lcom/sec/epdg/EpdgManager;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 537
    invoke-virtual {p2, p1}, Lcom/sec/epdg/EpdgManager;->isPossibleW2LHOAfterCallEndBySim(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p0, "W2L indication from EpdgManager will be coming."

    .line 538
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 542
    :cond_3
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    .line 544
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p2

    if-ne p2, v3, :cond_7

    .line 545
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isVoiceOverWifiPreferred()Z

    move-result p0

    if-nez p0, :cond_4

    const-string/jumbo p0, "re-regi case"

    .line 546
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const-string p0, "VoWiFi pref. re-regi not required"

    .line 549
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    const-string p2, "Can not find epdgManager"

    .line 554
    invoke-static {v5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string p2, "VolteServiceModule is null"

    .line 557
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNetworkType()I

    move-result p2

    const/16 p3, 0xd

    if-ne p2, p3, :cond_8

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 561
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq p0, p1, :cond_8

    const-string p0, "needReRegiOnCallStatusChanged, LTE HO case no need for re-regi"

    .line 562
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 565
    :cond_8
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 574
    :cond_9
    sget-object p1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p2, p1, :cond_a

    .line 575
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    goto :goto_2

    .line 576
    :cond_a
    sget-object p1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p2, p1, :cond_b

    .line 577
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    :cond_b
    :goto_2
    return v2
.end method

.method public onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 6

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStatus: event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->isRegistering()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onCallStatus: defer call status event to registration done"

    .line 592
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mCallSnapshot:Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->setCallSnapshot(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    return-void

    .line 598
    :cond_0
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, v0, :cond_3

    .line 599
    iget-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 600
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 601
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    const-string v4, "onCallStatus: process pending deregistration."

    const/4 v5, 0x1

    invoke-interface {p2, v2, v5, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 603
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    .line 605
    :cond_1
    iget-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingReregistration:Z

    if-eqz p2, :cond_2

    const-string p2, "onCallStatus: process pending updateRegistration."

    .line 606
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    .line 608
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingReregistration:Z

    .line 610
    :cond_2
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    goto :goto_0

    .line 612
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 614
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->isVoWiFiSupported(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->needReRegiOnCallStatusChanged(ILcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 615
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_4
    return-void
.end method

.method public onConfigUpdated()V
    .locals 13

    .line 1028
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v2, "mmtel"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v0

    .line 1029
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string v2, "mmtel-video"

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v1, v2, v3, v4}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v1

    .line 1030
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "presence"

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v2, v4, v3, v5}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v2

    .line 1031
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->readVCEConfigValue(Landroid/content/Context;)Z

    move-result v4

    .line 1032
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->readDmTimsTimer(Landroid/content/Context;)I

    move-result v5

    .line 1034
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConfigUpdated: VOLTE_ENABLED ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] -> ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "RegiGvnVzw"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    if-eq v0, v6, :cond_5

    .line 1036
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 1038
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 1040
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10, v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 1043
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "LRA"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v10}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessModel(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-boolean v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    iget v11, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v10, v11}, Lcom/sec/ims/settings/NvConfiguration;->setSmsIpNetworkIndi(Landroid/content/Context;ZI)V

    .line 1045
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onConfigUpdated: Sync SMS_OVER_IP based on VOLTE_ENABLED"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",SMS_OVER_IP:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v10, 0x100a0010

    invoke-static {v10, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v6, v10}, Lcom/sec/internal/ims/core/RegistrationManager;->setInvite403DisableService(ZI)V

    .line 1050
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_4

    .line 1051
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v10, 0xd

    if-eq v0, v10, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1052
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v10, 0xe

    if-ne v0, v10, :cond_2

    goto :goto_1

    .line 1057
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1058
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string/jumbo v10, "profile updated"

    invoke-interface {v0, v3, v6, v6, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "onConfigUpdated, need network detach/reattach"

    .line 1053
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    .line 1055
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendOmadmProvisioningUpdateStarted(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_2

    .line 1061
    :cond_4
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    .line 1065
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigUpdated: VCE_CONFIG ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    if-eq v4, v0, :cond_6

    .line 1067
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    .line 1068
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {v0, v3}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 1069
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 1072
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigUpdated: VZW_TIMS_TIMER ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimerInSec:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimerInSec:I

    if-eq v0, v5, :cond_7

    .line 1074
    iput v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimerInSec:I

    .line 1082
    :cond_7
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    if-ne v1, v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    if-eq v2, v0, :cond_9

    .line 1083
    :cond_8
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    .line 1084
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    .line 1085
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyOmadmVolteConfigDone(I)V

    :cond_9
    return-void
.end method

.method public onDeregistrationDone(Z)V
    .locals 2

    .line 1114
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernor;->onDeregistrationDone(Z)V

    .line 1120
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 1121
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "ImsPdnRequst"

    .line 1122
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->startTimsTimer(Ljava/lang/String;)V

    goto :goto_0

    .line 1123
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result p1

    const/16 v0, 0x4c

    if-ne p1, v0, :cond_1

    .line 1124
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "Local deregi done by SSAC. Discard current network!"

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 1125
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onEpdgDisconnected()V
    .locals 3

    .line 1375
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    if-eqz v0, :cond_0

    .line 1376
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "onEpdgDisconnected: Release mOverrideEpdgCellularPref"

    const-string v2, "RegiGvnVzw"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1377
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    :cond_0
    return-void
.end method

.method public onPdnConnecting(I)V
    .locals 0

    .line 1132
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->toggleTimsTimerByPdnTransport(I)V

    return-void
.end method

.method public onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V
    .locals 3

    .line 977
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V

    .line 978
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPdnRequestFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnVzw"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 980
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->isRetryLongerThanTims(Lcom/sec/internal/constants/ims/core/PdnFailReason;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->notifyImsNotAvailableByPdnReject()V

    return-void

    .line 985
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 986
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 987
    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 988
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_4

    .line 989
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isApAssistedMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 994
    :cond_1
    sget-object p2, Lcom/sec/internal/constants/ims/core/PdnFailReason;->PDN_THROTTLED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    if-eq p2, p1, :cond_2

    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    const/4 p2, 0x2

    if-lt p1, p2, :cond_3

    .line 995
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->notifyImsNotAvailableByPdnReject()V

    :cond_3
    return-void

    .line 990
    :cond_4
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "onPdnRequestFailed: Do not notify"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onPublishError(Lcom/sec/ims/util/SipError;)V
    .locals 3

    .line 444
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, v0}, Lcom/sec/ims/util/SipError;->equalsWithStrict(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USER_NOT_REGISTERED2:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, v0}, Lcom/sec/ims/util/SipError;->equalsWithStrict(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 448
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 449
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v0, 0x0

    const-string v1, "Publish Error. DeRegister.."

    const/4 v2, 0x1

    invoke-interface {p1, p0, v2, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    .line 445
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v0, "Publish Error. ReRegister.."

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 446
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onRegistrationDone()V
    .locals 2

    .line 256
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onRegistrationDone()V

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    const-string v1, "Registered"

    .line 258
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->handleCallSnapShotIfExist()V

    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V
    .locals 8

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfterMs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationError :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fail count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->EMPTY_PCSCF:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->resetRetry()V

    .line 295
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handlePcscfError()V

    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->handleCallSnapShotIfExist()V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    move-wide p2, v2

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v4}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->getPcoType()Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v0

    sget-object v5, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    if-ne v0, v5, :cond_2

    .line 318
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    const-string p2, "RegiGvnVzw: Discard current network immediately when PCO=5"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 319
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    goto/16 :goto_2

    .line 321
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 322
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/2addr v0, v4

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    rem-int/2addr v0, v5

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_4

    .line 325
    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 327
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    if-ge p1, v5, :cond_3

    .line 328
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :cond_3
    return-void

    .line 334
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USE_PROXY:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "onRegistrationError: start from 1st P-CSCF."

    .line 335
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 336
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 337
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto/16 :goto_2

    .line 338
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BAD_REQUEST:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v6, 0x7530

    if-nez v0, :cond_10

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->PAYMENT_REQUIRED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_1

    .line 351
    :cond_6
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_FOUND:Lcom/sec/ims/util/SipError;

    .line 352
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    if-ne v0, p1, :cond_7

    goto :goto_0

    .line 376
    :cond_7
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    if-le p1, v5, :cond_9

    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    if-nez p1, :cond_9

    const-string p1, "onRegistrationError: all PCSCF failed to Regi"

    .line 377
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCsfbSupported(I)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 380
    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeout:Lcom/sec/internal/helper/DelayedMessage;

    if-eqz p1, :cond_9

    const-string p1, "onRegistrationError: Discard current N/W. CSFB is unavailable"

    .line 381
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    :cond_9
    if-eqz p4, :cond_a

    .line 388
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    :cond_a
    cmp-long p1, p2, v2

    if-nez p1, :cond_b

    .line 393
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->getWaitTime()J

    move-result-wide p2

    .line 396
    :cond_b
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto :goto_2

    .line 355
    :cond_c
    :goto_0
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    if-nez p1, :cond_d

    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    if-ne p4, v4, :cond_d

    .line 356
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 357
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, p2, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    const-string p0, "onRegistrationError: Failed for all PCSCFs with IMSI_BASED"

    .line 358
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    if-nez p1, :cond_e

    .line 364
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    const-string/jumbo p4, "try regi with IMSI for next Registration"

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 365
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    :cond_e
    cmp-long p1, p2, v2

    if-nez p1, :cond_f

    move-wide p2, v6

    .line 373
    :cond_f
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto :goto_2

    :cond_10
    :goto_1
    if-eqz p4, :cond_11

    .line 341
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    goto :goto_2

    .line 342
    :cond_11
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    if-le p1, v4, :cond_12

    .line 344
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    goto :goto_2

    :cond_12
    cmp-long p1, p2, v2

    if-nez p1, :cond_13

    move-wide p2, v6

    .line 349
    :cond_13
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    :goto_2
    return-void
.end method

.method public onRegistrationTerminated(Lcom/sec/ims/util/SipError;JZ)V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationTerminated: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " retryAfterMs "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 278
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 279
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 281
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->handleCallSnapShotIfExist()V

    if-eqz p4, :cond_0

    const-wide/32 p1, 0xea60

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x3e8

    .line 283
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 3

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSipError: service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mmtel"

    .line 697
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->onSipError_MmtelVoice(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "smsip"

    .line 699
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2b

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 700
    invoke-static {p2}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    if-nez p1, :cond_4

    .line 704
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 705
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v0, "503 Service Unavailable: IMS Outage for SMS service request"

    invoke-interface {p1, p0, v2, v2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0

    .line 712
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 714
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    if-nez p1, :cond_3

    .line 715
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 716
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v0, 0x0

    const-string v1, "503 Service Unavailable: IMS Outage for Non-voice request"

    invoke-interface {p1, p0, v2, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_3
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    .line 720
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 721
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/ims/ImsRegistration;->setProhibited(Z)V

    :cond_4
    :goto_0
    return-object p2

    .line 725
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .locals 2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubscribeError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiGvnVzw"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p2, p1}, Lcom/sec/ims/util/SipError;->equalsWithStrict(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->USER_NOT_REGISTERED2:Lcom/sec/ims/util/SipError;

    invoke-virtual {p2, p1}, Lcom/sec/ims/util/SipError;->equalsWithStrict(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 461
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 462
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 463
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v0, 0x0

    const-string v1, "Subscribe Error. DeRegister.."

    invoke-interface {p1, p0, p2, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    .line 465
    :cond_1
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    .line 466
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 467
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/ims/ImsRegistration;->setProhibited(Z)V

    goto :goto_1

    .line 458
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string p2, "Subscribe Error. ReRegister.."

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 459
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 2

    .line 1099
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onTelephonyCallStatusChanged(I)V

    .line 1100
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 1101
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    .line 1102
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1103
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1107
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v1, "call state changed"

    invoke-interface {v0, p0, p1, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    .line 1104
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendOmadmProvisioningUpdateStarted(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTimsTimerExpired()V
    .locals 6

    .line 475
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onTimsTimerExpired()V

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 478
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCsfbSupported(I)Z

    move-result v1

    .line 479
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v2

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    .line 488
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 490
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onTimsTimerExpired: Continue retrying. Roaming [%s], CSFB supported [%s], Regi RAT [%d]"

    .line 488
    invoke-static {v5, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->resetRetry()V

    .line 494
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    :goto_0
    return-void
.end method

.method public onUpdatedPcoInfo(II)Z
    .locals 2

    const/16 v0, 0x40

    if-ne p1, v0, :cond_1

    .line 1217
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->fromType(I)Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object p1

    .line 1218
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUpdatedPcoInfo: PCO Type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RegiGvnVzw"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernor;->setPcoType(Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;)V

    .line 1221
    sget-object p2, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, p2}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1227
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    const-string/jumbo p0, "set PREFERED_IMPU as IMSI_BASED"

    .line 1228
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onVolteSettingChanged()V
    .locals 0

    .line 1359
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->forceTurnOnVoLteWhenMenuRemoved()V

    .line 1360
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->updateVolteState()V

    return-void
.end method

.method public releaseThrottle(I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 964
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->resetRetry()V

    .line 965
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    goto :goto_1

    :cond_1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 967
    :cond_2
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    goto :goto_1

    .line 958
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 959
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    .line 960
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 961
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->resetRetry()V

    .line 962
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    .line 970
    :cond_4
    :goto_1
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-nez p0, :cond_5

    .line 971
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "releaseThrottle: case by "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiGvnVzw"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public resetPcoType()V
    .locals 1

    .line 1237
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-void
.end method

.method public resetRetry()V
    .locals 3

    const-string v0, "RegiGvnVzw"

    const-string/jumbo v1, "resetRetry()"

    .line 944
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 946
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 947
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    const-wide/16 v1, 0x0

    .line 948
    iput-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 950
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcoType:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    if-eq v1, v2, :cond_0

    .line 951
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    :cond_0
    return-void
.end method

.method setRadioPower(Z)V
    .locals 2

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRadioPower ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnVzw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->setRadioPower(Z)V

    return-void
.end method

.method public startOmadmProvisioningUpdate()V
    .locals 3

    const/4 v0, 0x1

    .line 931
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    const/4 v0, 0x0

    .line 932
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->setRadioPower(Z)V

    .line 933
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendFinishOmadmProvisioningUpdate(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    return-void
.end method

.method public startTimsTimer(Ljava/lang/String;)V
    .locals 5

    .line 1143
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    const-string v1, "RegiGvnVzw"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v2}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ignore Tims timer for hVoLTE device in VZW NW"

    .line 1144
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1147
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimerInSec:I

    const/16 v2, 0x270f

    if-ne v0, v2, :cond_1

    const-string p0, "ignore Tims timer for labtest"

    .line 1149
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-ltz v0, :cond_2

    const/16 v2, 0xff

    if-le v0, v2, :cond_3

    .line 1153
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimsTimer; Invalid DM value ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimerInSec:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] for Tims Timer. Use default value[120]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x78

    .line 1154
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimerInSec:I

    .line 1156
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmTimsTimerInSec:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    return-void
.end method

.method public stopTimsTimer(Ljava/lang/String;)V
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegistrationGovernorVzw [mHasPendingDeregistration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingDeregistration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDmLastVolteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVolteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDmLastLvcEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastLvcEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDmLastEabEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastEabEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDmLastVceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmLastVceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsInviteForbidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mIsInviteForbidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDmVolteNodeUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mDmVolteNodeUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasPendingOmadmUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mHasPendingOmadmUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOverrideEpdgCellularPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw;->mOverrideEpdgCellularPref:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVolteAllowedWithDsac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    .line 1354
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getVolteAllowedWithDsac()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
