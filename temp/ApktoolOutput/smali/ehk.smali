.class final Lehk;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lehi;


# direct methods
.method constructor <init>(Lehi;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lehk;->a:Lehi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lehk;->a:Lehi;

    invoke-static {v0}, Lehi;->a(Lehi;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 120
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehq;

    iget-object v2, v0, Lehq;->a:Leik;

    iget-object v2, v2, Leik;->c:Leiu;

    if-eqz v2, :cond_0

    invoke-static {}, Lehi;->a()Lehi;

    move-result-object v2

    iget-object v3, v0, Lehq;->a:Leik;

    iget-object v3, v3, Leik;->c:Leiu;

    invoke-interface {v3}, Leiu;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lehi;->a:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lehq;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-static {}, Leik;->c()Leiw;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method
