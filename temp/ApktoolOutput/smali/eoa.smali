.class public final Leoa;
.super Ljava/lang/Object;
.source "LogTreeNode.java"


# instance fields
.field a:Ljava/lang/String;

.field public b:Leoj;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

.field public f:Leok;

.field public g:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

.field public h:Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

.field i:Leoa;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leoa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0}, Leoa;-><init>(Ljava/lang/String;Leoa;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Leoa;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leoa;->j:Ljava/util/List;

    .line 32
    iput-object p1, p0, Leoa;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Leoa;->i:Leoa;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leoa;->j:Ljava/util/List;

    .line 35
    return-void
.end method
