.class public final Ldic;
.super Ljava/lang/Object;
.source "FavoriteMenu.java"


# instance fields
.field public a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

.field public b:Landroid/content/Context;

.field public c:Lcom/wandoujia/ripple_framework/model/Model;

.field public d:Lgcd;

.field public e:Ldid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/ActionMenuItemView;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Ldic;->b:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Ldic;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 33
    iput-object p3, p0, Ldic;->c:Lcom/wandoujia/ripple_framework/model/Model;

    .line 34
    new-instance v0, Lded;

    invoke-direct {v0, p1, p3}, Lded;-><init>(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V

    iput-object v0, p0, Ldic;->d:Lgcd;

    .line 35
    new-instance v0, Ldid;

    invoke-direct {v0, p0}, Ldid;-><init>(Ldic;)V

    iput-object v0, p0, Ldic;->e:Ldid;

    .line 36
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v0

    iget-object v1, p0, Ldic;->e:Ldid;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lgcj;)V

    .line 38
    invoke-direct {p0}, Ldic;->a()V

    .line 39
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Ldic;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Ldic;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    iget-object v0, p0, Ldic;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Ldic;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Ldux;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0202e0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0202de

    goto :goto_1
.end method

.method static synthetic a(Ldic;Lgcd;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Ldic;->d:Lgcd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldic;->d:Lgcd;

    invoke-virtual {v0}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldic;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 63
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->MENU_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    if-eqz p2, :cond_0

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->MARK_FAVORITE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    :goto_0
    iget-object v1, p0, Ldic;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v5, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;)V

    .line 73
    return-void

    .line 63
    :cond_0
    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UNMARK_FAVORITE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    goto :goto_0
.end method
