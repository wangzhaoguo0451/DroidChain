.class public final Lfgp;
.super Leuf;
.source "CommunityAllMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leuf",
        "<",
        "Lffy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic b:Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lfgp;->b:Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;

    invoke-direct {p0}, Leuf;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lfgp;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Lcom/wandoujia/mvc/BaseController;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lffg;

    iget-object v1, p0, Lfgp;->b:Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lffg;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-static {p1}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;

    move-result-object v0

    return-object v0
.end method
