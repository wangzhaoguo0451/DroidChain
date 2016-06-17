.class public final Lfof;
.super Ljava/lang/Object;
.source "CommunityUnReadCountMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lfof;->a:Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lfof;->a:Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/community/activity/CommunityMessageActivity;->a(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lfof;->a:Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;->a(Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    return-void
.end method
