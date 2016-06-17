.class public Lcom/wandoujia/entities/startpage/SpecialListInfo;
.super Lcom/wandoujia/entities/startpage/ListInfo;
.source "SpecialListInfo.java"


# instance fields
.field private badgeTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/wandoujia/entities/startpage/ListInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadgeTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SpecialListInfo;->badgeTag:Ljava/lang/String;

    return-object v0
.end method
