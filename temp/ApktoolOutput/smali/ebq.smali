.class public final Lebq;
.super Ljava/lang/Object;
.source "LauncherService.java"

# interfaces
.implements Leds;


# instance fields
.field final synthetic a:Lcom/wandoujia/launcher/launcher/service/LauncherService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/service/LauncherService;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lebq;->a:Lcom/wandoujia/launcher/launcher/service/LauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lebr;

    invoke-direct {v1, p0, p1}, Lebr;-><init>(Lebq;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method
