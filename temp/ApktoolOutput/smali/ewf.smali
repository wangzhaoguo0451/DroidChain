.class public final Lewf;
.super Ljava/lang/Object;
.source "AppCommentsFragment.java"

# interfaces
.implements Levl;


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lewf;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->b(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->c(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lewg;

    invoke-direct {v1, p0}, Lewg;-><init>(Lewf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-static {p1}, Lcom/wandoujia/p4/configs/Config;->b(Ljava/lang/String;)V

    .line 148
    if-nez p2, :cond_0

    sget-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->UNKNOWN:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->c(Ljava/lang/String;)V

    .line 150
    return-void

    .line 148
    :cond_0
    invoke-virtual {p2}, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
