.class final Lcjd;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/dto/AccountResponse;

.field private synthetic b:Lcjc;


# direct methods
.method constructor <init>(Lcjc;Lcom/wandoujia/account/dto/AccountResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 941
    iput-object p1, p0, Lcjd;->b:Lcjc;

    iput-object p2, p0, Lcjd;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcjd;->b:Lcjc;

    iget-object v0, v0, Lcjc;->a:Lcja;

    iget-object v0, v0, Lcja;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcjd;->b:Lcjc;

    iget-object v0, v0, Lcjc;->a:Lcja;

    iget-object v0, v0, Lcja;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    iget-object v1, p0, Lcjd;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    invoke-interface {v0}, Lcmh;->a()V

    .line 947
    :cond_0
    return-void
.end method
