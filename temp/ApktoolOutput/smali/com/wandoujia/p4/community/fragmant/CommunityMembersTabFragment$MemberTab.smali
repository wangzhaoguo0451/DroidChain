.class final enum Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;
.super Ljava/lang/Enum;
.source "CommunityMembersTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

.field public static final enum ALL:Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

.field public static final enum TOTAL:Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

.field public static final enum WEEKLY:Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;


# instance fields
.field private final delegate:Lftq;

.field private final scope:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 31
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    const-string v1, "WEEKLY"

    new-instance v2, Lftq;

    new-instance v3, Lgqj;

    const-string v4, "weekly"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e01ef

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgqj;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-class v4, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;

    invoke-direct {v2, v3, v4, v7}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    const-string v3, "weekly"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;-><init>(Ljava/lang/String;ILftq;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->WEEKLY:Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    .line 36
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    const-string v1, "TOTAL"

    new-instance v2, Lftq;

    new-instance v3, Lgqj;

    const-string v4, "total"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e01ee

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgqj;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-class v4, Lcom/wandoujia/p4/community/fragmant/CommunityRankingListFragment;

    invoke-direct {v2, v3, v4, v7}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    const-string v3, "total"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;-><init>(Ljava/lang/String;ILftq;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->TOTAL:Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    .line 41
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    const-string v1, "ALL"

    new-instance v2, Lftq;

    new-instance v3, Lgqj;

    const-string v4, "all"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e01ed

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgqj;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-class v4, Lcom/wandoujia/p4/community/fragmant/CommunityAllMembersFragment;

    invoke-direct {v2, v3, v4, v7}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    const-string v3, "all"

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;-><init>(Ljava/lang/String;ILftq;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->ALL:Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->WEEKLY:Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    aput-object v1, v0, v8

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->TOTAL:Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    aput-object v1, v0, v9

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->ALL:Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    aput-object v1, v0, v10

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->$VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILftq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lftq;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->delegate:Lftq;

    .line 50
    iput-object p4, p0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->scope:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;)Lftq;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->delegate:Lftq;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->$VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/community/fragmant/CommunityMembersTabFragment$MemberTab;

    return-object v0
.end method
