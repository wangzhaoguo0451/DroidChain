.class public Lcom/wandoujia/p4/settings/MainSettingActivity;
.super Lgay;
.source "MainSettingActivity.java"


# instance fields
.field private a:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

.field private b:Lgbz;

.field private c:Lgby;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lgay;-><init>()V

    .line 706
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/settings/MainSettingActivity;)Lcom/wandoujia/base/utils/SystemUtil$InstallOption;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->a:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/settings/MainSettingActivity;Lcom/wandoujia/base/utils/SystemUtil$InstallOption;)Lcom/wandoujia/base/utils/SystemUtil$InstallOption;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->a:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    return-object p1
.end method

.method public static synthetic a(Ljava/util/List;)Ljava/lang/Long;
    .locals 6
    .parameter

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0e00e6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 368
    const-string v0, ""

    .line 369
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0e00e5

    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_0
    const-string v2, "usb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    const v1, 0x7f0e00ea

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 374
    :cond_1
    const-string v2, "emulated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    invoke-virtual {p0, v6}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_2
    const-string v2, "sdcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    const v1, 0x7f0e00e7

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_3
    invoke-virtual {p0, v6}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic a(Landroid/content/DialogInterface;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/settings/MainSettingActivity;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/32 v4, 0x100000

    const-wide/16 v2, 0x400

    .line 75
    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "setting_clear_cache"

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0160

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    cmp-long v0, p1, v4

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 667
    :cond_0
    return-object v0

    .line 660
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 661
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 662
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 663
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/settings/MainSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->e()V

    return-void
.end method

.method public static synthetic c()Ljava/util/List;
    .locals 5

    .prologue
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/io/File;

    sget-object v2, Lham;->f:Lham;

    iget-object v2, v2, Lham;->i:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lham;->f:Lham;

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/base/storage/StorageManager;

    invoke-virtual {v0}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-static {v0, v3}, Lg;->a(Ljava/lang/String;Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-static {v3, v4}, Lcom/wandoujia/p4/settings/MainSettingActivity;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PATCH:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-static {v0, v3}, Lg;->a(Ljava/lang/String;Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".patch"

    invoke-static {v3, v4}, Lcom/wandoujia/p4/settings/MainSettingActivity;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-static {v0, v3}, Lg;->a(Ljava/lang/String;Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ".packet"

    invoke-static {v0, v3}, Lcom/wandoujia/p4/settings/MainSettingActivity;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static synthetic c(Lcom/wandoujia/p4/settings/MainSettingActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 75
    const v0, 0x7f0e0252

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    return-void
.end method

.method private d()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 303
    new-instance v6, Lmu;

    invoke-direct {v6, p0}, Lmu;-><init>(Landroid/content/Context;)V

    .line 304
    const v0, 0x7f0e00e4

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmu;->a(Ljava/lang/CharSequence;)Lmu;

    .line 306
    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/wandoujia/base/storage/StorageManager;->getAvailableDirectories(J)Ljava/util/HashMap;

    move-result-object v7

    .line 307
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->s()Ljava/lang/String;

    move-result-object v8

    .line 309
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gt v0, v2, :cond_1

    move v0, v2

    :goto_0
    new-array v9, v0, [Ljava/lang/String;

    .line 310
    const v0, 0x7f0e00e8

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v1

    .line 314
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 315
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v3, v1

    move v4, v2

    .line 316
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 319
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v3, v4

    .line 322
    :cond_0
    add-int/lit8 v5, v4, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    long-to-double v12, v12

    invoke-static {v12, v13}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v4

    move v4, v5

    .line 324
    goto :goto_1

    .line 309
    :cond_1
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    .line 326
    :cond_3
    new-instance v0, Lgbv;

    invoke-direct {v0}, Lgbv;-><init>()V

    iget-object v1, v6, Lmu;->a:Lmp;

    iput-object v9, v1, Lmp;->l:[Ljava/lang/CharSequence;

    iget-object v1, v6, Lmu;->a:Lmp;

    iput-object v0, v1, Lmp;->n:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, v6, Lmu;->a:Lmp;

    iput v3, v0, Lmp;->q:I

    iget-object v0, v6, Lmu;->a:Lmp;

    iput-boolean v2, v0, Lmp;->p:Z

    new-instance v0, Lgbu;

    invoke-direct {v0, p0, v7}, Lgbu;-><init>(Lcom/wandoujia/p4/settings/MainSettingActivity;Ljava/util/HashMap;)V

    iget-object v1, v6, Lmu;->a:Lmp;

    iget-object v3, v6, Lmu;->a:Lmp;

    iget-object v3, v3, Lmp;->a:Landroid/content/Context;

    const v4, 0x7f0e023a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lmp;->f:Ljava/lang/CharSequence;

    iget-object v1, v6, Lmu;->a:Lmp;

    iput-object v0, v1, Lmp;->g:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lgbt;

    invoke-direct {v0}, Lgbt;-><init>()V

    iget-object v1, v6, Lmu;->a:Lmp;

    iget-object v3, v6, Lmu;->a:Lmp;

    iget-object v3, v3, Lmp;->a:Landroid/content/Context;

    const v4, 0x7f0e0162

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lmp;->h:Ljava/lang/CharSequence;

    iget-object v1, v6, Lmu;->a:Lmp;

    iput-object v0, v1, Lmp;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 359
    invoke-virtual {v6}, Lmu;->a()Lmt;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v2}, Lmt;->setCanceledOnTouchOutside(Z)V

    .line 361
    invoke-virtual {v0}, Lmt;->show()V

    .line 363
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const v3, 0x7f0e038a

    .line 563
    const-string v0, "setting_root_install_location"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 564
    invoke-static {p0}, Lj;->g(Landroid/content/Context;)Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    move-result-object v1

    .line 565
    if-eqz v0, :cond_0

    .line 566
    sget-object v2, Lgbm;->a:[I

    invoke-virtual {v1}, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 580
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 568
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 572
    :pswitch_1
    const v1, 0x7f0e038b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 576
    :pswitch_2
    const v1, 0x7f0e038c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f060005

    return v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const v9, 0x7f0e0162

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 193
    const-string v0, "setting_notify_entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->NOTIFY:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    invoke-static {p0, v0}, Lcom/wandoujia/p4/settings/SettingActivityHelper;->a(Landroid/content/Context;Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v0, "setting_about_entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    sget-object v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->ABOUT:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    invoke-static {p0, v0}, Lcom/wandoujia/p4/settings/SettingActivityHelper;->a(Landroid/content/Context;Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;)V

    goto :goto_0

    .line 199
    :cond_2
    const-string v0, "setting_wechat_following"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    invoke-static {p0}, Ld;->u(Landroid/content/Context;)V

    goto :goto_0

    .line 201
    :cond_3
    const-string v0, "setting_shortcut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    new-instance v0, Lhoq;

    invoke-direct {v0, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001a

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0553

    invoke-virtual {v0, v2}, Lhoq;->a(I)Lhoq;

    invoke-virtual {v0, v1}, Lhoq;->a(Landroid/view/View;)Lhoq;

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    move-result-object v0

    const v2, 0x7f0c011c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lgbj;

    invoke-direct {v3, p0, v0}, Lgbj;-><init>(Lcom/wandoujia/p4/settings/MainSettingActivity;Lhoj;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0c011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lgbk;

    invoke-direct {v3, p0, v0}, Lgbk;-><init>(Lcom/wandoujia/p4/settings/MainSettingActivity;Lhoj;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0c0120

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lgbl;

    invoke-direct {v2, p0, v0}, Lgbl;-><init>(Lcom/wandoujia/p4/settings/MainSettingActivity;Lhoj;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 203
    :cond_4
    const-string v0, "setting_root_install"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    const-string v5, "root_install"

    invoke-virtual {p0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SETTINGS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SLIDE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->TOGGLE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    if-eqz p2, :cond_6

    const-wide/16 v6, 0x1

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;)V

    .line 205
    if-eqz p2, :cond_8

    .line 207
    invoke-static {p0}, Lj;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 208
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_first_setting"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 209
    :cond_5
    new-instance v0, Lhoq;

    invoke-direct {v0, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    .line 210
    const v1, 0x7f0e0598

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    .line 211
    const v1, 0x7f0e00d2

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    .line 212
    const v1, 0x7f0e00d3

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgbo;

    invoke-direct {v2, p0}, Lgbo;-><init>(Lcom/wandoujia/p4/settings/MainSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 243
    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    goto/16 :goto_0

    .line 204
    :cond_6
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 246
    :cond_7
    new-instance v0, Lgbr;

    invoke-direct {v0, p0}, Lgbr;-><init>(Lcom/wandoujia/p4/settings/MainSettingActivity;)V

    sget-object v1, Lcom/wandoujia/base/utils/ThreadPool$Priority;->LOW:Lcom/wandoujia/base/utils/ThreadPool$Priority;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;Lcom/wandoujia/base/utils/ThreadPool$Priority;)V

    goto/16 :goto_0

    .line 271
    :cond_8
    invoke-virtual {p0, v8}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Z)V

    goto/16 :goto_0

    .line 273
    :cond_9
    const-string v0, "setting_root_install_location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 274
    new-instance v3, Lhoq;

    invoke-direct {v3, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0c013f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0c0140

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const v2, 0x7f0c0141

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const v5, 0x7f0c0142

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-static {p0}, Lj;->g(Landroid/content/Context;)Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    move-result-object v5

    iput-object v5, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->a:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    sget-object v5, Lgbm;->a:[I

    iget-object v6, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->a:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    invoke-virtual {v6}, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_2
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isExternalSDCardMounted()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    :cond_a
    const v5, 0x7f0e038f

    invoke-virtual {v3, v5}, Lhoq;->a(I)Lhoq;

    invoke-virtual {v3, v4}, Lhoq;->a(Landroid/view/View;)Lhoq;

    const v4, 0x7f0e023a

    new-instance v5, Lgbg;

    invoke-direct {v5, p0, v1, v2, v0}, Lgbg;-><init>(Lcom/wandoujia/p4/settings/MainSettingActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v3, v4, v5}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    new-instance v1, Lgbf;

    invoke-direct {v1}, Lgbf;-><init>()V

    invoke-virtual {v0, v9, v1}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    invoke-virtual {v3}, Lhoq;->b()Lhoj;

    move-result-object v0

    new-instance v1, Lgbi;

    invoke-direct {v1, p0}, Lgbi;-><init>(Lcom/wandoujia/p4/settings/MainSettingActivity;)V

    invoke-virtual {v0, v1}, Lhoj;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 275
    :cond_b
    const-string v0, "setting_auto_install_apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 276
    invoke-static {p0}, Lcom/wandoujia/base/utils/SettingsUtil;->jumpToAccessibilitySettings(Landroid/content/Context;)Z

    .line 278
    invoke-static {}, Lhgd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 282
    :cond_c
    const-string v0, "account_logout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 283
    new-instance v0, Lhoq;

    invoke-direct {v0, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e03c6

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e03c5

    invoke-virtual {v0, v2}, Lhoq;->a(I)Lhoq;

    const v2, 0x7f0e0502

    new-instance v3, Lgbw;

    invoke-direct {v3, p0}, Lgbw;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    new-instance v2, Lgbx;

    invoke-direct {v2}, Lgbx;-><init>()V

    invoke-virtual {v0, v9, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    invoke-virtual {v0, v1}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    goto/16 :goto_0

    .line 284
    :cond_d
    const-string v0, "setting_feed_back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 287
    :cond_e
    const-string v0, "setting_clear_cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 288
    iget-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->c:Lgby;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->c:Lgby;

    invoke-virtual {v0}, Lgby;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_f
    new-instance v0, Lgby;

    invoke-direct {v0, p0}, Lgby;-><init>(Lcom/wandoujia/p4/settings/MainSettingActivity;)V

    iput-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->c:Lgby;

    iget-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->c:Lgby;

    new-array v1, v8, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 289
    :cond_10
    const-string v0, "setting_apk_download_location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 290
    invoke-direct {p0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->d()V

    goto/16 :goto_0

    .line 291
    :cond_11
    const-string v0, "setting_auto_check_app_upgrade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 292
    invoke-static {v8, v7}, Lewx;->a(ZZ)V

    goto/16 :goto_0

    .line 293
    :cond_12
    const-string v0, "setting_connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/connection/ui/ConnectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 441
    const-string v0, "setting_root_install"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 443
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 446
    :cond_0
    const-string v0, "setting_root_install_location"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isExternalSDCardMounted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 447
    :cond_1
    return-void
.end method

.method protected final b()Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->MAIN:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    return-object v0
.end method

.method public bridge synthetic onBackPressed()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lgay;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 83
    invoke-super {p0, p1}, Lgay;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 90
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "setting_shortcut"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 93
    :cond_0
    invoke-static {}, Lhpa;->a()Lhpa;

    invoke-static {}, Lhpa;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lj;->a(Landroid/content/Context;Z)V

    const-string v0, "setting_root_install"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Z)V

    :cond_1
    const-string v0, "setting_root_install_location"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    const-string v0, "is_delete_after_install"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v1, "setting_custom_font"

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lhgd;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "setting_auto_install_apk"

    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "setting_apk_download_location"

    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f0e00eb

    invoke-virtual {p0, v4}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, v2, v6}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v2, Lgbe;

    invoke-direct {v2}, Lgbe;-><init>()V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Lgbn;

    invoke-direct {v0}, Lgbn;-><init>()V

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->b:Lgbz;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->b:Lgbz;

    invoke-virtual {v0}, Lgbz;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->b:Lgbz;

    invoke-virtual {v0, v8}, Lgbz;->cancel(Z)Z

    :cond_4
    new-instance v0, Lgbz;

    invoke-direct {v0, p0}, Lgbz;-><init>(Lcom/wandoujia/p4/settings/MainSettingActivity;)V

    iput-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->b:Lgbz;

    iget-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->b:Lgbz;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    const-string v0, "account_logout_category"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    :cond_5
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const-string v1, "wdj://settings"

    invoke-virtual {v0, p0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    .line 106
    return-void

    .line 93
    :cond_6
    invoke-static {p0}, Lj;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isExternalSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "setting_root_install_location"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 752
    invoke-super {p0}, Lgay;->onDestroy()V

    .line 753
    iget-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->b:Lgbz;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/wandoujia/p4/settings/MainSettingActivity;->b:Lgbz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgbz;->cancel(Z)Z

    .line 756
    :cond_0
    return-void
.end method

.method public bridge synthetic onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lgay;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lgay;->onResume()V

    .line 111
    const-string v0, "setting_about_entry"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0016

    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->e()V

    .line 117
    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Lgay;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic setTitle(I)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Lgay;->setTitle(I)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Lgay;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
