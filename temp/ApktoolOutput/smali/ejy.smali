.class public final Lejy;
.super Ljava/lang/Object;
.source "StatefulCtrl.java"


# instance fields
.field a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

.field b:Leiu;

.field public c:Lekl;

.field d:Ljava/lang/String;

.field e:I

.field public f:Z

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnLongClickListener;

.field private i:Leeq;

.field private j:Lega;

.field private k:Lcom/wandoujia/appmanager/LocalAppChangedListener;

.field private final l:Leij;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lejy;->e:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lejy;->f:Z

    .line 215
    new-instance v0, Lekh;

    invoke-direct {v0, p0}, Lekh;-><init>(Lejy;)V

    iput-object v0, p0, Lejy;->g:Landroid/view/View$OnClickListener;

    .line 260
    new-instance v0, Leki;

    invoke-direct {v0, p0}, Leki;-><init>(Lejy;)V

    iput-object v0, p0, Lejy;->h:Landroid/view/View$OnLongClickListener;

    .line 274
    new-instance v0, Lekj;

    invoke-direct {v0, p0}, Lekj;-><init>(Lejy;)V

    iput-object v0, p0, Lejy;->i:Leeq;

    .line 320
    new-instance v0, Lekk;

    invoke-direct {v0, p0}, Lekk;-><init>(Lejy;)V

    iput-object v0, p0, Lejy;->j:Lega;

    .line 343
    new-instance v0, Leka;

    invoke-direct {v0, p0}, Leka;-><init>(Lejy;)V

    iput-object v0, p0, Lejy;->k:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 374
    new-instance v0, Lekb;

    invoke-direct {v0, p0}, Lekb;-><init>(Lejy;)V

    iput-object v0, p0, Lejy;->l:Leij;

    .line 53
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Lejy;->i:Leeq;

    invoke-interface {v0, v1}, Leen;->a(Leeq;)V

    .line 54
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p0, Lejy;->k:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 55
    invoke-static {}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a()Lcom/wandoujia/launcher_base/utils/ZipManager;

    move-result-object v0

    iget-object v1, p0, Lejy;->l:Leij;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Leij;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lejy;Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lejy;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lejy;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lejy;->e:I

    invoke-static {p1, v0}, Ld;->a(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lejy;->b:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lejy;->b:Leiu;

    invoke-interface {v1}, Leiu;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->APP:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {p1, v0, v1, v2}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    iget-object v0, p0, Lejy;->d:Ljava/lang/String;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-static {p1, v0, v1, p2, p3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;Leiu;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    .line 73
    iput-object p2, p0, Lejy;->b:Leiu;

    .line 74
    iget-object v0, p0, Lejy;->g:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lejy;->h:Landroid/view/View$OnLongClickListener;

    invoke-interface {p1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 76
    invoke-interface {p2}, Leiu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setIcon(Ljava/lang/String;)V

    .line 77
    invoke-interface {p2}, Leiu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setTitle(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INIT:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {p1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    .line 79
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    invoke-interface {p2}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lejy;->j:Lega;

    invoke-interface {v0, v1, v2}, Leen;->a(Ljava/lang/String;Lega;)V

    .line 80
    iget-object v0, p0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INIT:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p0, Lejy;->b:Leiu;

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INSTALLED:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lejy;->b:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lekf;

    invoke-direct {v1, p0}, Lekf;-><init>(Lejy;)V

    invoke-static {v0, v1}, Leeu;->a(Ljava/lang/String;Leey;)V

    new-instance v0, Lekg;

    invoke-direct {v0, p0}, Lekg;-><init>(Lejy;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lekg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lejy;->d:Ljava/lang/String;

    .line 60
    iput p2, p0, Lejy;->e:I

    .line 61
    return-void
.end method
