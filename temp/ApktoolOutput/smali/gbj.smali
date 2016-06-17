.class public final Lgbj;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lhoj;

.field private synthetic b:Lcom/wandoujia/p4/settings/MainSettingActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/settings/MainSettingActivity;Lhoj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lgbj;->b:Lcom/wandoujia/p4/settings/MainSettingActivity;

    iput-object p2, p0, Lgbj;->a:Lhoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 603
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wandoujia/p4/utils/ShortcutUtil;->a(Landroid/content/Context;Z)V

    .line 604
    iget-object v0, p0, Lgbj;->b:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->c(Lcom/wandoujia/p4/settings/MainSettingActivity;)V

    .line 605
    iget-object v0, p0, Lgbj;->a:Lhoj;

    invoke-virtual {v0}, Lhoj;->dismiss()V

    .line 606
    return-void
.end method
