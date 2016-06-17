.class public final Lexv;
.super Ljava/lang/Object;
.source "CleanFragment.java"

# interfaces
.implements Leyg;


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lexv;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lexv;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->a(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->a()I

    move-result v0

    .line 48
    iget-object v1, p0, Lexv;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->a(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    move-result-object v1

    new-instance v2, Lexw;

    invoke-direct {v2, p0, v0}, Lexw;-><init>(Lexv;I)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_0
    return-void
.end method
