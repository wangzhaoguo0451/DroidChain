.class public final Ldwg;
.super Lhjo;
.source "UpdateNotification.java"


# instance fields
.field a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/view/StatefulButton;)V
    .locals 1
    .parameter

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lhjo;-><init>(Lcom/wandoujia/ripple_framework/view/StatefulButton;)V

    .line 314
    iput-object p1, p0, Ldwg;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    .line 315
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldwg;->b:Ljava/lang/String;

    .line 316
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    return-void
.end method
