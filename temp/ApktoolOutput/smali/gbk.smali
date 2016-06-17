.class public final Lgbk;
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
    .line 610
    iput-object p1, p0, Lgbk;->b:Lcom/wandoujia/p4/settings/MainSettingActivity;

    iput-object p2, p0, Lgbk;->a:Lhoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 613
    const/4 v0, 0x1

    invoke-static {v0}, Lfak;->a(Z)V

    .line 614
    iget-object v0, p0, Lgbk;->b:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->c(Lcom/wandoujia/p4/settings/MainSettingActivity;)V

    .line 615
    iget-object v0, p0, Lgbk;->a:Lhoj;

    invoke-virtual {v0}, Lhoj;->dismiss()V

    .line 616
    return-void
.end method
