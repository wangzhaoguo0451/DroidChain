.class public final Lffb;
.super Ljava/lang/Object;
.source "ExpandableCircleAvatarAdapter.java"


# instance fields
.field a:I

.field b:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;


# direct methods
.method private constructor <init>(ILcom/wandoujia/p4/community/http/model/CommunityUserModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Lffb;->a:I

    .line 179
    iput-object p2, p0, Lffb;->b:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(ILcom/wandoujia/p4/community/http/model/CommunityUserModel;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lffb;-><init>(ILcom/wandoujia/p4/community/http/model/CommunityUserModel;)V

    return-void
.end method
