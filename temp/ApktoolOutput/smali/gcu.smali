.class public final Lgcu;
.super Ljava/lang/Object;
.source "TipsType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 321
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "community"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wandoujia/p4/account/manager/AccountUtil;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;)V

    .line 323
    return-void
.end method
