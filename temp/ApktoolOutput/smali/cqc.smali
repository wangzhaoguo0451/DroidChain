.class final Lcqc;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final a:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "installerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 87
    sput-object v0, Lcqc;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    return-void
.end method

.method static synthetic a()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcqc;->a:Landroid/os/HandlerThread;

    return-object v0
.end method
