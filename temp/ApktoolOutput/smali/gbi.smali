.class public final Lgbi;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/settings/MainSettingActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/settings/MainSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lgbi;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 541
    iget-object v0, p0, Lgbi;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->b(Lcom/wandoujia/p4/settings/MainSettingActivity;)V

    .line 542
    return-void
.end method
