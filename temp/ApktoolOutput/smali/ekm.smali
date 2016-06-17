.class public final Lekm;
.super Ljava/lang/Object;
.source "SuggestionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lekm;->a:Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lekm;->a:Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;

    invoke-static {v0}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->a(Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;)Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->INSTALLED:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lekm;->a:Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->READY:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    .line 82
    :cond_0
    return-void
.end method
