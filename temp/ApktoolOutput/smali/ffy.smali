.class public final Lffy;
.super Ljava/lang/Object;
.source "CommunityMemberCardModel.java"

# interfaces
.implements Lfby;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfby",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityUserModel;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field public d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/community/http/model/CommunityUserModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lffy;->a:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lffy;->b:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lffy;->c:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lffy;->d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/p4/card/models/CardViewModel;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lffz;

    invoke-direct {v0, p0}, Lffz;-><init>(Lffy;)V

    return-object v0
.end method
