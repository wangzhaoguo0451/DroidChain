.class public final Lets;
.super Ljava/lang/Thread;
.source "AccountProfileFragment.java"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lets;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    iput-object p2, p0, Lets;->a:Ljava/lang/String;

    iput-object p3, p0, Lets;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 443
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v1, p0, Lets;->a:Ljava/lang/String;

    iget-object v2, p0, Lets;->b:Ljava/lang/String;

    iget-object v0, v0, Letz;->a:Lcmm;

    iget-object v0, v0, Lcmm;->a:Lcii;

    invoke-virtual {v0, v1, v2}, Lcii;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 444
    iget-object v0, p0, Lets;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->h(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Z

    .line 445
    return-void
.end method
