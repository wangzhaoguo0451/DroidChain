.class final Lekk;
.super Ljava/lang/Object;
.source "StatefulCtrl.java"

# interfaces
.implements Lega;


# instance fields
.field private synthetic a:Lejy;


# direct methods
.method constructor <init>(Lejy;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lekk;->a:Lejy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/install/InstallInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lekk;->a:Lejy;

    iget-object v0, v0, Lejy;->b:Leiu;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/wandoujia/launcher_base/install/InstallInfo;->a:Ljava/lang/String;

    iget-object v1, p0, Lekk;->a:Lejy;

    iget-object v1, v1, Lejy;->b:Leiu;

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 336
    :cond_0
    :goto_1
    return-void

    .line 323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p1, Lcom/wandoujia/launcher_base/install/InstallInfo;->b:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALL_START:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lcom/wandoujia/launcher_base/install/InstallInfo;->b:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALLING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    if-ne v0, v1, :cond_4

    .line 328
    :cond_3
    iget-object v0, p0, Lekk;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INSTALLING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    goto :goto_1

    .line 329
    :cond_4
    iget-object v0, p1, Lcom/wandoujia/launcher_base/install/InstallInfo;->b:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALLED:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    if-ne v0, v1, :cond_5

    .line 330
    iget-object v0, p0, Lekk;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INSTALLED:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    goto :goto_1

    .line 331
    :cond_5
    iget-object v0, p1, Lcom/wandoujia/launcher_base/install/InstallInfo;->b:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNZIPPING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    if-ne v0, v1, :cond_6

    .line 332
    iget-object v0, p0, Lekk;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->UNZIPPING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    goto :goto_1

    .line 333
    :cond_6
    iget-object v0, p1, Lcom/wandoujia/launcher_base/install/InstallInfo;->b:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNINSTALLED:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lekk;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INIT:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    goto :goto_1
.end method
