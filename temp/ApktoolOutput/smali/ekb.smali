.class final Lekb;
.super Ljava/lang/Object;
.source "StatefulCtrl.java"

# interfaces
.implements Leij;


# instance fields
.field private synthetic a:Lejy;


# direct methods
.method constructor <init>(Lejy;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lekb;->a:Lejy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 378
    if-eqz p1, :cond_1

    iget-object v0, p0, Lekb;->a:Lejy;

    iget-object v0, v0, Lejy;->b:Leiu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lekb;->a:Lejy;

    iget-object v0, v0, Lejy;->b:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 379
    sget-object v0, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->UNZIPPING:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    if-ne p2, v0, :cond_0

    .line 380
    iget-object v0, p0, Lekb;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->UNZIPPING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    .line 383
    :cond_0
    return-void

    .line 378
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
