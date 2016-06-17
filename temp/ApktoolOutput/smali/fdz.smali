.class public final Lfdz;
.super Ljava/lang/Object;
.source "CommunityOpenTopicListAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lfdz;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lfdz;->b:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lfdz;->b:Landroid/content/Context;

    iget-object v1, p0, Lfdz;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityTopicListActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method
