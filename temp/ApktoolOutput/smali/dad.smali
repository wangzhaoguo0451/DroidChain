.class final Ldad;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldaa;


# direct methods
.method constructor <init>(Ldaa;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Ldad;->a:Ldaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 637
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ldad;->a:Ldaa;

    iget-object v1, v1, Ldaa;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 639
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldap;

    .line 640
    iget-object v1, v0, Ldap;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldaq;

    .line 644
    iget-object v4, v1, Ldaq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    .line 645
    iget-object v4, v0, Ldap;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Ldaq;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 650
    :cond_2
    iget-object v0, p0, Ldad;->a:Ldaa;

    iget-object v0, v0, Ldaa;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 651
    iget-object v0, p0, Ldad;->a:Ldaa;

    const/4 v1, 0x0

    iput-object v1, v0, Ldaa;->l:Ljava/lang/Runnable;

    .line 652
    return-void
.end method
