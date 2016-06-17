.class final Lfac;
.super Ljava/lang/Object;
.source "ALManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lezz;


# direct methods
.method constructor <init>(Lezz;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lfac;->a:Lezz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lfac;->a:Lezz;

    iget-object v0, v0, Lezz;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lfac;->a:Lezz;

    iget-object v0, v0, Lezz;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfad;

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Lfad;->a()V

    .line 174
    :cond_0
    return-void
.end method
