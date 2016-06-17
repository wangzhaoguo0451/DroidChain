.class final Lftp;
.super Ljava/lang/Object;
.source "NetworkListAsyncloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfto;


# direct methods
.method constructor <init>(Lfto;)V
    .locals 0
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lftp;->a:Lfto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lftp;->a:Lfto;

    iget-object v0, v0, Lfto;->a:Lftn;

    invoke-virtual {v0}, Lftn;->a()V

    .line 587
    return-void
.end method
