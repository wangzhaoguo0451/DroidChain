.class final Lfrs;
.super Ljava/lang/Object;
.source "FeedbackListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/ViewGroup;

.field private synthetic b:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lfrs;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lfrs;->b:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfrs;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    :try_start_0
    const-string v2, "comments"

    iget-object v3, p0, Lfrs;->b:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 91
    const-string v2, "comments"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lfrs;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
