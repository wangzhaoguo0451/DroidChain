.class final Lciu;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/dto/AccountResponse;

.field private synthetic b:Lcit;


# direct methods
.method constructor <init>(Lcit;Lcom/wandoujia/account/dto/AccountResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lciu;->b:Lcit;

    iput-object p2, p0, Lciu;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lciu;->b:Lcit;

    iget-object v0, v0, Lcit;->a:Lcir;

    iget-object v0, v0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lciu;->b:Lcit;

    iget-object v0, v0, Lcit;->a:Lcir;

    iget-object v0, v0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    iget-object v1, p0, Lciu;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    invoke-interface {v0}, Lcmh;->a()V

    .line 1016
    iget-object v0, p0, Lciu;->b:Lcit;

    iget-object v0, v0, Lcit;->a:Lcir;

    iget-object v0, v0, Lcir;->c:Lcii;

    iget-object v1, p0, Lciu;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    sget-object v1, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    invoke-virtual {v0, v1}, Lcii;->a(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V

    .line 1018
    :cond_0
    return-void
.end method
