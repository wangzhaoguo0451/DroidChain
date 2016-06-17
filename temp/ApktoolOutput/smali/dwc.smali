.class public final Ldwc;
.super Landroid/text/style/ClickableSpan;
.source "UpdateNotification.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/update/UpdateNotification;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/update/UpdateNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Ldwc;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Ldwc;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    iget-object v0, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->b:Lhoj;

    invoke-virtual {v0}, Lhoj;->dismiss()V

    .line 195
    iget-object v0, p0, Ldwc;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/update/UpdateNotification;->c()V

    .line 196
    iget-object v0, p0, Ldwc;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    iget-object v0, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->a:Lcom/wandoujia/p4/views/CommonPopupView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/CommonPopupView;->a()V

    .line 199
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    return-void
.end method
