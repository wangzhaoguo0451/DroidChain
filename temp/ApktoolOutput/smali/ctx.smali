.class public final Lctx;
.super Ljava/lang/Object;
.source "GameLauncherReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->f()V

    .line 61
    return-void
.end method
