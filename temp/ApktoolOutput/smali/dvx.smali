.class public final Ldvx;
.super Ljava/lang/Object;
.source "UpdateClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldvw;


# direct methods
.method public constructor <init>(Ldvw;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Ldvx;->a:Ldvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Ldvx;->a:Ldvw;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Ldvw;->a:Landroid/content/ServiceConnection;

    if-nez v2, :cond_0

    new-instance v2, Ldvy;

    invoke-direct {v2, v0}, Ldvy;-><init>(Ldvw;)V

    iput-object v2, v0, Ldvw;->a:Landroid/content/ServiceConnection;

    :cond_0
    iget-object v0, v0, Ldvw;->a:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/update/UpdateApplication;->c:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    invoke-static {v1, v0, v2}, Lhrm;->a(Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)Z

    .line 59
    return-void
.end method
