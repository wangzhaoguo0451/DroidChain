.class public final Lfib;
.super Leuf;
.source "CommunityTopicListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leuf",
        "<",
        "Lfgf;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lfib;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;

    invoke-direct {p0}, Leuf;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lfib;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Lcom/wandoujia/mvc/BaseController;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Lffo;

    const-string v1, "feature"

    iget-object v2, p0, Lfib;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, v1}, Lffo;-><init>(Z)V

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-static {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;

    move-result-object v0

    return-object v0
.end method
