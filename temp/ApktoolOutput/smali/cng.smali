.class public final Lcng;
.super Lcmp;
.source "ProfileRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:[Lcom/wandoujia/account/dto/FIELDS;

.field private f:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Lcmg;Ljava/lang/String;Lcmm;[Lcom/wandoujia/account/dto/FIELDS;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p4}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 19
    iput-object p5, p0, Lcng;->e:[Lcom/wandoujia/account/dto/FIELDS;

    .line 20
    iput-object p3, p0, Lcng;->f:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 35
    invoke-virtual {p0}, Lcng;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Lcng;->d:Lcmm;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcng;->d:Lcmm;

    iget-object v1, p0, Lcng;->f:Ljava/lang/String;

    iget-object v2, p0, Lcng;->e:[Lcom/wandoujia/account/dto/FIELDS;

    iget-object v3, v0, Lcmm;->a:Lcii;

    invoke-virtual {v0, v1}, Lcmm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcmm;->e:Lcom/wandoujia/account/dto/DeviceBean;

    invoke-virtual {v3, v1, v0, v2}, Lcii;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/DeviceBean;[Lcom/wandoujia/account/dto/FIELDS;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcng;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcng;->b()V

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcng;->b()V

    goto :goto_0
.end method
