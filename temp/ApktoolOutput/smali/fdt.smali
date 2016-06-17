.class public final Lfdt;
.super Ljava/lang/Object;
.source "CommunityOpenBallotAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lfdt;->b:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lfdt;->a:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lfdt;->a:Landroid/content/Context;

    iget-object v1, p0, Lfdt;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityBallotStatusActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    return-void
.end method
