.class public final Ldxk;
.super Ljava/lang/Object;
.source "LauncherAppDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->b()V

    .line 66
    invoke-static {}, Leha;->a()Leha;

    move-result-object v0

    invoke-virtual {v0}, Leha;->b()V

    .line 67
    invoke-static {}, Leeu;->a()V

    .line 68
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->b()Ljava/util/List;

    .line 69
    return-void
.end method
