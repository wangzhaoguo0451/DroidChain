.class public final Lcqj;
.super Ljava/lang/Object;
.source "AppConfig.java"


# instance fields
.field public synthetic a:Lcom/wandoujia/jupiter/JupiterApplication;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/JupiterApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-static {v0}, Lj;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b()Lemz;
    .locals 4

    .prologue
    .line 316
    new-instance v0, Lemz;

    iget-object v1, p0, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    const-string v2, "UA-15790641-73"

    const-string v3, "wdj:/"

    invoke-direct {v0, v1, v2, v3}, Lemz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
