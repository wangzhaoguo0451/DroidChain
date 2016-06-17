.class final Leka;
.super Lcom/wandoujia/appmanager/LocalAppChangedListener;
.source "StatefulCtrl.java"


# instance fields
.field private synthetic a:Lejy;


# direct methods
.method constructor <init>(Lejy;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Leka;->a:Lejy;

    invoke-direct {p0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Leka;->a:Lejy;

    iget-object v0, v0, Lejy;->b:Leiu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leka;->a:Lejy;

    iget-object v0, v0, Lejy;->b:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Leka;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Leka;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INSTALLED:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    .line 361
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 365
    invoke-direct {p0, p1}, Leka;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Leka;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INSTALLING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    .line 367
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    invoke-direct {p0, p1}, Leka;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Leka;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INSTALLING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    .line 349
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 353
    invoke-direct {p0, p1}, Leka;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Leka;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INSTALLING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    .line 355
    :cond_0
    return-void
.end method
