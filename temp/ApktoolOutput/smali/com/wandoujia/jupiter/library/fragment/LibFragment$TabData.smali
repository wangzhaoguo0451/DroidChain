.class public final enum Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;
.super Ljava/lang/Enum;
.source "LibFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

.field public static final enum APP_MANAGE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

.field public static final enum DOWNLOAD:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

.field public static final enum FAVORITE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

.field public static final enum FOLLOW_MANAGE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

.field public static final enum HISTORY:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

.field public static final enum UPGRADE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final intent:Ljava/lang/String;

.field private final role:Lcom/wandoujia/account/dto/Role;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 257
    new-instance v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    const-string v1, "DOWNLOAD"

    const-class v4, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;

    const-string v5, "download"

    const-string v6, "wdj://me/downloads"

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Role;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->DOWNLOAD:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    .line 261
    new-instance v4, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    const-string v5, "UPGRADE"

    const-class v8, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e05ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "wdj://me/upgrade_apps"

    move v6, v11

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Role;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->UPGRADE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    .line 265
    new-instance v4, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    const-string v5, "APP_MANAGE"

    const-class v8, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0394

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "wdj://me/apps"

    move v6, v12

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Role;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->APP_MANAGE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    .line 269
    new-instance v3, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    const-string v4, "FAVORITE"

    sget-object v6, Lcom/wandoujia/account/dto/Role;->ROLE_USER:Lcom/wandoujia/account/dto/Role;

    const-class v7, Lcom/wandoujia/jupiter/library/fragment/FavoriteFragment;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e02c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "wdj://me/favorite"

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Role;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->FAVORITE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    .line 273
    new-instance v3, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    const-string v4, "HISTORY"

    const/4 v5, 0x4

    sget-object v6, Lcom/wandoujia/account/dto/Role;->ROLE_USER:Lcom/wandoujia/account/dto/Role;

    const-class v7, Lcom/wandoujia/jupiter/fragment/ListFragment;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0363

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "wdj://me/history"

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Role;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->HISTORY:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    .line 277
    new-instance v3, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    const-string v4, "FOLLOW_MANAGE"

    const/4 v5, 0x5

    sget-object v6, Lcom/wandoujia/account/dto/Role;->ROLE_SUBSCRIBER:Lcom/wandoujia/account/dto/Role;

    const-class v7, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0306

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "wdj://me/following"

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;-><init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Role;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->FOLLOW_MANAGE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    .line 256
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    sget-object v1, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->DOWNLOAD:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->UPGRADE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    aput-object v1, v0, v11

    sget-object v1, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->APP_MANAGE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    aput-object v1, v0, v12

    sget-object v1, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->FAVORITE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    aput-object v1, v0, v13

    const/4 v1, 0x4

    sget-object v2, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->HISTORY:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->FOLLOW_MANAGE:Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->$VALUES:[Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/wandoujia/account/dto/Role;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/account/dto/Role;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 288
    iput-object p3, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->role:Lcom/wandoujia/account/dto/Role;

    .line 289
    iput-object p4, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->clazz:Ljava/lang/Class;

    .line 290
    iput-object p5, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->title:Ljava/lang/String;

    .line 291
    iput-object p6, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->intent:Ljava/lang/String;

    .line 292
    return-void
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->newTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private newBundle()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->intent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "page_intent_uri"

    iget-object v2, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->intent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    const-string v1, "force_close_toolbar"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    sget-object v1, Ldih;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 323
    :goto_0
    return-object v0

    .line 313
    :pswitch_0
    const-string v1, "page_api_url"

    const-string v2, "http://apis.wandoujia.com/five/v2/history/%s?format=proto"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v1, "api_url_enable_cache"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    new-instance v1, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;

    invoke-direct {v1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;-><init>()V

    .line 317
    iput-boolean v5, v1, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->swipeRefresh:Z

    .line 318
    const-string v2, "view_config"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 321
    :pswitch_1
    const-string v1, "page_api_url"

    const-string v2, "http://apis.wandoujia.com/five/v1/follow/%s?format=proto"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private newTab()Lhow;
    .locals 3

    .prologue
    .line 295
    sget-object v0, Ldih;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 301
    new-instance v0, Ldjj;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->title:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ldjj;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0

    .line 297
    :pswitch_0
    new-instance v0, Ldjl;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldjl;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :pswitch_1
    new-instance v0, Ldjo;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldjo;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private newTabFragmentData()Lhbe;
    .locals 6

    .prologue
    .line 331
    sget-object v0, Ldih;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 361
    new-instance v0, Lhbe;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->clazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->intent:Ljava/lang/String;

    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->newBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->newTab()Lhow;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lhbe;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Lhow;)V

    :goto_0
    return-object v0

    .line 333
    :pswitch_0
    new-instance v0, Ldim;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->clazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->intent:Ljava/lang/String;

    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->newBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->newTab()Lhow;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ldim;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Lhow;)V

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private static newTabs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhbe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 366
    invoke-static {}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->values()[Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 367
    iget-object v5, v4, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->role:Lcom/wandoujia/account/dto/Role;

    if-nez v5, :cond_1

    .line 368
    invoke-direct {v4}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->newTabFragmentData()Lhbe;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    iget-object v5, v4, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->role:Lcom/wandoujia/account/dto/Role;

    invoke-static {v5}, Lchv;->a(Lcom/wandoujia/account/dto/Role;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    invoke-direct {v4}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->newTabFragmentData()Lhbe;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 373
    :cond_2
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;
    .locals 1
    .parameter

    .prologue
    .line 256
    const-class v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->$VALUES:[Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;

    return-object v0
.end method
