.class public Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
.super Ljava/util/Observable;
.source "GlobalSettingsRepo.java"


# static fields
.field protected static final SP_KEY_BUILDINFO:Ljava/lang/String; = "buildinfo"

.field protected static final SP_KEY_CSC_IMSSETTING_TYPE:Ljava/lang/String; = "cscimssettingtype"

.field protected static final SP_KEY_GCFMODE:Ljava/lang/String; = "gcfmode"

.field protected static final SP_KEY_GLOBAL_GC_ENABLED:Ljava/lang/String; = "globalgcenabled"

.field protected static final SP_KEY_HAS_SIM:Ljava/lang/String; = "hassim"

.field protected static final SP_KEY_IMSI:Ljava/lang/String; = "imsi"

.field protected static final SP_KEY_LOADED:Ljava/lang/String; = "loaded"

.field protected static final SP_KEY_MNONAME:Ljava/lang/String; = "mnoname"

.field protected static final SP_KEY_MVNONAME:Ljava/lang/String; = "mvnoname"

.field protected static final SP_KEY_NWCODE:Ljava/lang/String; = "nwcode"

.field protected static final SP_KEY_NWNAME:Ljava/lang/String; = "NetworkName"


# instance fields
.field protected mContext:Landroid/content/Context;

.field mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

.field protected final mLock:Ljava/lang/Object;

.field protected mMnoNameUpdated:Z

.field protected mMnoinfo:Landroid/content/ContentValues;

.field protected mPhoneId:I

.field protected mVersionUpdated:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    .line 48
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoinfo:Landroid/content/ContentValues;

    .line 51
    iput-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    .line 53
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mVersionUpdated:Z

    .line 54
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoNameUpdated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoinfo:Landroid/content/ContentValues;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mVersionUpdated:Z

    .line 54
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoNameUpdated:Z

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    .line 62
    iput p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    .line 63
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->makeInstance(Lcom/sec/internal/constants/Mno;I)V

    return-void
.end method

.method private initNewInstance(Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 92
    iput-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->dump()V

    return-void
.end method

.method public getGlobalGcEnabled()Z
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getGlobalGcEnabled()Z

    move-result p0

    return p0
.end method

.method public getPreviousMno()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousMno()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public load()V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->load()V

    return-void
.end method

.method public loadByDynamicConfig()V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadByDynamicConfig()V

    return-void
.end method

.method makeInstance(Lcom/sec/internal/constants/Mno;I)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    instance-of p1, p1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;

    if-eqz p1, :cond_1

    return-void

    .line 76
    :cond_1
    new-instance p1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->initNewInstance(Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;)V

    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 78
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    instance-of p1, p1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoEur;

    if-eqz p1, :cond_3

    return-void

    .line 81
    :cond_3
    new-instance p1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoEur;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoEur;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->initNewInstance(Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;)V

    goto :goto_1

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    if-eqz p1, :cond_5

    return-void

    .line 86
    :cond_5
    new-instance p1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->initNewInstance(Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;)V

    goto :goto_1

    .line 68
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    instance-of p1, p1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;

    if-eqz p1, :cond_7

    return-void

    .line 71
    :cond_7
    new-instance p1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->initNewInstance(Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;)V

    :goto_1
    return-void
.end method

.method protected needResetCallSettingBySim(I)Z
    .locals 0

    const-string/jumbo p0, "ro.simbased.changetype"

    const-string p1, ""

    .line 129
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OMC"

    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "SED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected preUpdateSystemSettings(Lcom/sec/internal/constants/Mno;IZZ)I
    .locals 0

    .line 0
    return p2
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->reset()V

    return-void
.end method

.method public resetUserSettingAsDefault(ZZZ)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->resetUserSettingAsDefault(ZZZ)V

    return-void
.end method

.method public update(Landroid/content/ContentValues;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->update(Landroid/content/ContentValues;)V

    return-void
.end method

.method public updateMno(Landroid/content/ContentValues;)Z
    .locals 7

    const-string v0, "mnoname"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    const-string v2, "imsSwitchType"

    .line 97
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    .line 98
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 104
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->makeInstance(Lcom/sec/internal/constants/Mno;I)V

    .line 107
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->updateMno(Landroid/content/ContentValues;)Z

    move-result v1

    const-string v2, "globalgcenabled"

    .line 109
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 110
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getGlobalGcEnabled()Z

    move-result v5

    if-eq v5, v4, :cond_1

    .line 111
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalGcSettings(Z)V

    const/4 v1, 0x1

    .line 116
    :cond_1
    iget v5, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v6, "globalsettings"

    invoke-static {v5, p0, v6, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 118
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mvnoname"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "NetworkName"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1
.end method
