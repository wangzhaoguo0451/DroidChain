.class public final Lgdf;
.super Ljava/lang/Object;
.source "FirstDownloadTaskGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lgde;


# direct methods
.method public constructor <init>(Lgde;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lgdf;->a:Lgde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lgdf;->a:Lgde;

    invoke-static {v0}, Lgde;->a(Lgde;)V

    .line 113
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    iget-object v1, p0, Lgdf;->a:Lgde;

    invoke-static {v1}, Lgde;->b(Lgde;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lgdf;->a:Lgde;

    invoke-static {v2}, Lgde;->c(Lgde;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    return-void
.end method
