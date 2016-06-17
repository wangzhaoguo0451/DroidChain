.class public final Lcmv;
.super Lcmp;
.source "ChangeProfileRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    const-string v0, ""

    invoke-direct {p0, v0, p3, p4}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 16
    iput-object p1, p0, Lcmv;->e:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcmv;->f:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 22
    invoke-virtual {p0}, Lcmv;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcmv;->d:Lcmm;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcmv;->b()V

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcmv;->d:Lcmm;

    iget-object v1, p0, Lcmv;->e:Ljava/lang/String;

    iget-object v2, p0, Lcmv;->f:Ljava/lang/String;

    iget-object v0, v0, Lcmm;->a:Lcii;

    invoke-virtual {v0, v1, v2}, Lcii;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcmv;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcmv;->b()V

    goto :goto_0
.end method
