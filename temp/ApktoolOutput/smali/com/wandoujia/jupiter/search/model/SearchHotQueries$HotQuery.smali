.class public Lcom/wandoujia/jupiter/search/model/SearchHotQueries$HotQuery;
.super Ljava/lang/Object;
.source "SearchHotQueries.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG_NEW:Ljava/lang/String; = "new"

.field private static final serialVersionUID:J = 0x3ccc5406a5712e5bL


# instance fields
.field public mtime:J

.field public query:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNew()Z
    .locals 2

    .prologue
    .line 41
    const-string v0, "new"

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/model/SearchHotQueries$HotQuery;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
