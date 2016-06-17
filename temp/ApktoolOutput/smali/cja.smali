.class public final Lcja;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Lcmj;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/wandoujia/account/dto/DeviceBean;

.field final synthetic c:Lcii;


# direct methods
.method constructor <init>(Lcii;)V
    .locals 0
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcja;->c:Lcii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 958
    iget-object v0, p0, Lcja;->c:Lcii;

    iget-object v0, v0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lcje;

    invoke-direct {v1, p0, p1}, Lcje;-><init>(Lcja;Lcom/wandoujia/account/dto/WandouResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 966
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 921
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcja;->c:Lcii;

    iput-object p1, v0, Lcii;->a:Ljava/lang/String;

    .line 923
    iget-object v0, p0, Lcja;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    if-nez v0, :cond_1

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Lcja;->c:Lcii;

    iget-object v0, v0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lcjb;

    invoke-direct {v1, p0}, Lcjb;-><init>(Lcja;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 932
    new-instance v0, Lcjc;

    invoke-direct {v0, p0}, Lcjc;-><init>(Lcja;)V

    invoke-virtual {v0}, Lcjc;->start()V

    goto :goto_0
.end method
