.class final Lffa;
.super Ljava/lang/Object;
.source "ExpandableCircleAvatarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lfez;


# direct methods
.method constructor <init>(Lfez;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lffa;->a:Lfez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lffa;->a:Lfez;

    invoke-static {v0}, Lfez;->a(Lfez;)V

    .line 168
    return-void
.end method
