.class public final Lexs;
.super Ljava/lang/Object;
.source "CleanPopupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lexs;->a:Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Lfak;->a(Z)V

    .line 30
    iget-object v0, p0, Lexs;->a:Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;->onBackPressed()V

    .line 31
    return-void
.end method
