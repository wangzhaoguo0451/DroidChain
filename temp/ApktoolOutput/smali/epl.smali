.class final Lepl;
.super Ljava/lang/Object;
.source "AsyncRawSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lepk;


# direct methods
.method constructor <init>(Lepk;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lepl;->a:Lepk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lepl;->a:Lepk;

    iget-object v0, v0, Lepk;->a:Lepr;

    invoke-interface {v0}, Lepr;->c()V

    .line 104
    return-void
.end method
