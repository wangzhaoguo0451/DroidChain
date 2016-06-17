.class final Leyo;
.super Ljava/lang/Object;
.source "SmoothAnimationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leyn;


# direct methods
.method constructor <init>(Leyn;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Leyo;->a:Leyn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Leyo;->a:Leyn;

    iget-object v0, v0, Leyn;->a:Leym;

    iget-object v0, v0, Leym;->a:Leyl;

    iget-object v0, v0, Leyl;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Leyo;->a:Leyn;

    iget-object v0, v0, Leyn;->a:Leym;

    iget-object v0, v0, Leym;->a:Leyl;

    iget-object v0, v0, Leyl;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leys;

    iget-object v1, p0, Leyo;->a:Leyn;

    iget-object v1, v1, Leyn;->a:Leym;

    iget-object v1, v1, Leym;->a:Leyl;

    iget v1, v1, Leyl;->a:I

    invoke-interface {v0, v1}, Leys;->a(I)V

    .line 86
    :cond_0
    return-void
.end method
