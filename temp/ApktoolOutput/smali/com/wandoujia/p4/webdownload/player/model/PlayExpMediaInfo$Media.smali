.class public Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;
.super Ljava/lang/Object;
.source "PlayExpMediaInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4936469117bc0750L


# instance fields
.field public extras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;->url:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;->extras:Ljava/util/HashMap;

    .line 66
    return-void
.end method
