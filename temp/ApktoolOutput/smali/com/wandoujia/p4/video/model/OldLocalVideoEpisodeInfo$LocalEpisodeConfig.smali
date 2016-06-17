.class public Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;
.super Ljava/lang/Object;
.source "OldLocalVideoEpisodeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4622d0ad7c46c88L


# instance fields
.field public isPrivate:Z

.field public providerName:Ljava/lang/String;

.field final synthetic this$0:Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;

.field public videoType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;->this$0:Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;->providerName:Ljava/lang/String;

    .line 167
    iput-boolean p3, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;->isPrivate:Z

    .line 168
    iput-object p4, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;->videoType:Ljava/lang/String;

    .line 169
    return-void
.end method
