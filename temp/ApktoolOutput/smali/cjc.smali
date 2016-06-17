.class final Lcjc;
.super Ljava/lang/Thread;
.source "AccountCore.java"


# instance fields
.field final synthetic a:Lcja;


# direct methods
.method constructor <init>(Lcja;)V
    .locals 0
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcjc;->a:Lcja;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 935
    iget-object v0, p0, Lcjc;->a:Lcja;

    iget-object v0, v0, Lcja;->c:Lcii;

    iget-object v1, p0, Lcjc;->a:Lcja;

    iget-object v1, v1, Lcja;->a:Ljava/lang/String;

    iget-object v2, p0, Lcjc;->a:Lcja;

    iget-object v2, v2, Lcja;->b:Lcom/wandoujia/account/dto/DeviceBean;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/wandoujia/account/dto/FIELDS;

    const/4 v4, 0x0

    sget-object v5, Lcom/wandoujia/account/dto/FIELDS;->BASIC_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcii;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/DeviceBean;[Lcom/wandoujia/account/dto/FIELDS;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    .line 937
    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 939
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcjc;->a:Lcja;

    iget-object v2, v2, Lcja;->c:Lcii;

    invoke-virtual {v2}, Lcii;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lchv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 941
    iget-object v1, p0, Lcjc;->a:Lcja;

    iget-object v1, v1, Lcja;->c:Lcii;

    iget-object v1, v1, Lcii;->h:Landroid/os/Handler;

    new-instance v2, Lcjd;

    invoke-direct {v2, p0, v0}, Lcjd;-><init>(Lcjc;Lcom/wandoujia/account/dto/AccountResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 951
    :cond_0
    return-void
.end method
