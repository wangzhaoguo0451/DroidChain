.class public Lfgq;
.super Ljava/lang/Object;
.source "CommunityAllMembersFragment.java"

# interfaces
.implements Lfza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfza",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityUserModel;",
        "Lffy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lfgq;->a:Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lfgq;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 116
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    new-instance v0, Lffy;

    iget-object v1, p0, Lfgq;->a:Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lfgq;->a:Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfgq;->a:Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getCurUserRole()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lffy;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/community/http/model/CommunityUserModel;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-class v0, Lfgq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
